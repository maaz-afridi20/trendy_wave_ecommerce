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
}
