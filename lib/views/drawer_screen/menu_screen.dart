import 'dart:io' show File;
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/controllers/user_controller.dart';
import 'package:zaisystems/models/firebase_user.dart';
import 'package:zaisystems/services/firebase_services/firebase_service.dart';
import 'package:zaisystems/views/drawer_screen/widgets/dummy_avt.dart';
import 'package:zaisystems/views/drawer_screen/widgets/nav_tile.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/dialog_boxs.dart';
import 'package:zaisystems/widget_common/loading/loading_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    final navController = Get.find<NavController>();
    final loader = LoadingScreen.instance();
    final firebase = FirebaseService.instance();
    const dummyUser = FirebaseUser(
      id: "",
      name: name,
      email: emailHint,
    );

    void showLoader({
      required String message,
      required String title,
    }) =>
        loader.show(
          context: context,
          text: "Please wait...",
          title: "Login-out",
        );

    void showError({required String message, required String title}) =>
        errorDialogue(
          context: context,
          message: message,
          title: title,
        );

    void logOut() async {
      if (await confirmDialogue(
        context: context,
        message: "Are you sure you want to logout?",
        title: "Logout",
      )) {
        try {
          showLoader(message: "Please wait...", title: "Loggin-out");
          await firebase.logOut();
          loader.hide();
          await Get.offAllNamed(AppRoutes.loginScreen);
        } catch (e) {
          loader.hide();
          showError(message: e.toString(), title: "Error");
        }
      }
    }

    Widget getProfile() {
      if (userController.isLoggedIn) {
        final profileUrl = userController.currentUser!.profileUrl;
        if (profileUrl.isNotEmpty && File(profileUrl).existsSync()) {
          return circularBox(
            widget: Image.file(
              File(profileUrl),
              fit: BoxFit.cover,
            ),
          );
        }
      }
      return circularBox(widget: dummyAvt());
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: 10.0, vertical: context.screenHeight * 0.14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Obx(
            () => Row(
              children: <Widget>[
                getProfile(),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (userController.isLoggedIn
                              ? userController.currentUser!.name
                              : dummyUser.name)
                          .text
                          .white
                          .fontFamily(bold)
                          .make(),
                      (userController.isLoggedIn
                              ? userController.currentUser!.email
                              : dummyUser.email)
                          .text
                          .size(10)
                          .white
                          .make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          20.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              menuItems.length,
              (index) => navTile(
                title: menuItems[index].title,
                icon: menuItems[index].icon,
                onClick: () => navController.setNavIndex(index),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: customButton(
                  onPress: logOut,
                  title: "Logout",
                  textColor: whiteColor,
                  btnColor: mehroonColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
