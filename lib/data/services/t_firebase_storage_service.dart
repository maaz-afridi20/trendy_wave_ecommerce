import 'dart:io';

import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TFirebaseStorageService extends GetxService {
  static TFirebaseStorageService get instance => Get.find();

  final _firebaseStorage = FirebaseStorage.instance;

  // upload local assets from ide.
  Future<Uint8List> getImageDataFromLocalAsset(String path) async {
    try {
      final byteData = await rootBundle.load(path);
      final imageData = byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imageData;
    } catch (e) {
      throw 'error loading image $e';
    }
  }

  Future<String> uploadImageData(
      String path, Uint8List image, String name) async {
    try {
      final ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image);
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'FirebaseException : ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error : ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception : ${e.message}';
      } else {
        throw 'Something went wrong. Please try again later.';
      }
    }
  }

  // upload image file.
  Future<String> uploadImageFile(String path, XFile image) async {
    try {
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'FirebaseException : ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error : ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception : ${e.message}';
      } else {
        throw 'Something went wrong. Please try again later.';
      }
    }
  }
}
