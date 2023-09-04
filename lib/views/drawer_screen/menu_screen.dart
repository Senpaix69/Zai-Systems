import 'dart:io' show File;
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/controllers/user_controller.dart';
import 'package:zaisystems/services/firebase_service.dart';
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

    void showLoader({
      required String message,
      required String title,
    }) =>
        loader.show(
          context: context,
          text: message,
          title: title,
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
        message: confirmLogout,
        title: logout,
      )) {
        try {
          showLoader(message: wait, title: logingOut);
          await firebase.logOut();
          loader.hide();
          await Get.offAllNamed(AppRoutes.loginScreen);
        } catch (e) {
          loader.hide();
          showError(message: e.toString(), title: error);
        }
      }
    }

    void toggleMenu() {
      final isDrawerOpen = Scaffold.of(context).isDrawerOpen;

      if (isDrawerOpen) {
        Scaffold.of(context).closeDrawer();
      } else {
        Scaffold.of(context).openDrawer();
      }
    }

    Widget getProfile() {
      if (userController.isLoggedIn) {
        final profileUrl = userController.currentUser?.profileUrl;
        if (profileUrl != null && File(profileUrl).existsSync()) {
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

    return Drawer(
      backgroundColor: whiteColor,
      child: Container(
        margin: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: context.screenHeight * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Obx(
              () => Row(
                children: <Widget>[
                  getProfile(),
                  const SizedBox(width: 10),
                  if (userController.isLoggedIn)
                    userDetails(
                      name: userController.currentUser!.name,
                      email: userController.currentUser!.email,
                    )
                  else
                    userDetails(name: "DummyUser", email: "dummy@gmail.com"),
                ],
              ),
            ),
            const Divider(
              height: 40,
              color: lightGrey,
            ),
            Column(
              children: List.generate(
                menuItems.length,
                (index) => Obx(
                  () => navTile(
                    title: menuItems[index].title,
                    icon: menuItems[index].icon,
                    isActive: index == navController.currentIndex,
                    onClick: () {
                      navController.setNavIndex(index);
                      Future.delayed(
                        const Duration(milliseconds: 100),
                        () => toggleMenu(),
                      );
                    },
                  ),
                ),
              ),
            ),
            const Divider(
              color: lightGrey,
              height: 10,
            ),
            const Spacer(),
            customButton(
              onPress: logOut,
              title: logout,
              textColor: whiteColor,
              btnColor: mehroonColor,
            ).box.width(context.screenWidth * 0.4).make().centered(),
          ],
        ),
      ),
    );
  }

  Expanded userDetails({
    required String name,
    required String email,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          name.text.fontFamily(bold).make(),
          email.text.size(10).color(fontGrey).make(),
        ],
      ),
    );
  }
}
