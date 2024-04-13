import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.isFeatured,
      this.parentId = ''}); // parent id can be null so that's why we use ''

  //! empty category model.
  static CategoryModel emptyCategoryModel() =>
      CategoryModel(id: '', name: '', image: '', isFeatured: false);

  //! convert to json to save in firebase.
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'Image': image,
      'IsFeatured': isFeatured,
      'ParentId': parentId
    };
  }

  //! revert to old format

  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    // jo b data iss data() mein aye gaa wo acturally json mein hoga.
    // is wja say hm iss ko change krtay hain to from json or to json.
    if (document.data() != null) {
      final data = document.data()!;
      return CategoryModel(
          id: document.id,
          name: data['Name'] ?? '',
          image: data['Image'] ?? '',
          parentId: data['ParentId'] ?? '',
          isFeatured: data['IsFeatured'] ?? false);
    } else {
      return CategoryModel.emptyCategoryModel();
    }
  }
}
