import 'package:trendy_waves_ecommerce/data/services/t_firebase_storage_service.dart';
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  // variables..
  final _db = FirebaseFirestore.instance;

  //! Get all Categories.

  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('categories').get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'somethins went wrong. please try again later';
    }
  }

  //! Get all SubCategories

  //! upload all Categories to firestore.

  // dummy uploader.
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      final storage = Get.put(TFirebaseStorageService());

      for (var category in categories) {
        // get the image link from the local assetss.
        final file = await storage.getImageDataFromLocalAsset(category.image);

        //  upload that image data
        final url =
            await storage.uploadImageData('categories', file, category.name);

        // assign url to category image attribute
        category.image = url;

        await _db
            .collection('categories')
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong. try again later';
    }
  }
}
