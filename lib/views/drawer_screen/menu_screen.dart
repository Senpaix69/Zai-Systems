import 'dart:io' show File;
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/controllers/user_controller.dart';
import 'package:zaisystems/models/firebase_user.dart';
import 'package:zaisystems/services/firebase_services/firebase_service.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/dialog_boxs.dart';
import 'package:zaisystems/widget_common/loading/loading_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
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
            children: <Widget>[
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.home,
                  color: whiteColor,
                ),
                title: "Home".text.white.make(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.design_services,
                  color: whiteColor,
                ),
                title: "HCM 360".text.white.make(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.miscellaneous_services,
                  color: whiteColor,
                ),
                title: "Services".text.white.make(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.my_library_books_sharp,
                  color: whiteColor,
                ),
                title: "IT Training".text.white.make(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.group,
                  color: whiteColor,
                ),
                title: "Team".text.white.make(),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.contact_page,
                  color: whiteColor,
                ),
                title: "Contact Us".text.white.make(),
              ),
            ],
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

Icon dummyAvt() => const Icon(Icons.person, size: 35, color: mehroonColor);

Widget circularBox({required Widget widget}) => widget.box
    .color(lightGolden)
    .roundedFull
    .size(60, 60)
    .clip(Clip.antiAlias)
    .make();
