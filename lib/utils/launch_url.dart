import 'package:url_launcher/url_launcher.dart';
import 'package:zaisystems/utils/snackbar.dart';
import 'package:zaisystems/widget_common/loading/loading_screen.dart';

Future<void> launchURL({
  required String url,
  required context,
}) async {
  if (url.isEmpty) return;
  final loader = LoadingScreen.instance();
  try {
    loader.show(
      context: context,
      text: "Please wait...",
      title: "Lauching Url",
    );
    final uri = Uri.parse(url);
    final res = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!res) {
      showSnack(context: context, message: "Could not launch url");
    }
  } catch (e) {
    showSnack(context: context, message: "Error: Network Connection Error");
  } finally {
    Future.delayed(const Duration(milliseconds: 200), () => loader.hide());
  }
}
