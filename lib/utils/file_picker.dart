import 'package:file_picker/file_picker.dart';

Future<List<String>?> pickImage({
  required String type,
  bool allowMultiple = false,
}) async {
  try {
    await FilePicker.platform.clearTemporaryFiles();
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: type == "image" ? FileType.image : FileType.any,
      allowMultiple: allowMultiple,
    );

    if (result != null) {
      List<String> paths = result.files.map((file) => file.path!).toList();
      if (paths.isNotEmpty) {
        return paths;
      }
    }
    return null;
  } catch (e) {
    return null;
  }
}
