import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<List<int>?> compressImage({
  required String filePath,
  int quality = 60,
}) async {
  try {
    final result = await FlutterImageCompress.compressWithFile(
      filePath,
      quality: quality,
    );
    return result;
  } catch (e) {
    return null;
  }
}
