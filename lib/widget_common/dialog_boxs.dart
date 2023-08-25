import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/applogo_widget.dart';

Future<void> errorDialogue({
  required BuildContext context,
  required String message,
  required String title,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        surfaceTintColor: lightGrey,
        title: Row(
          children: <Widget>[
            appLogoWidget().box.size(40, 40).make(),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  color: mehroonColor,
                  fontFamily: bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: lightGrey,
        content: Text(
          message,
          style: const TextStyle(
            color: darkFontGrey,
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mehroonDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'OK',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

Future<bool> confirmDialogue({
  required BuildContext context,
  required String message,
  required String title,
}) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          surfaceTintColor: lightGrey,
          title: Row(
            children: <Widget>[
              appLogoWidget().box.size(40, 40).make(),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: mehroonColor,
                    fontFamily: bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          backgroundColor: lightGrey,
          content: Text(
            message,
            style: const TextStyle(
              color: darkFontGrey,
            ),
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightGolden,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: mehroonColor),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mehroonDark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
              ],
            ),
          ],
        );
      }).then(
    (value) => value ?? false,
  );
}
