import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class BrandModel {
  String id;
  String image;
  String name;
  int? productsCount;
  bool? isFeatured;

  BrandModel(
      {required this.id,
      required this.image,
      required this.name,
      this.productsCount,
      this.isFeatured});

  //!  empty helper function
  //

  static BrandModel empty() => BrandModel(id: '', image: '', name: '');

//! convert to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'productsCount': productsCount,
      'isFeatured': isFeatured,
      'image': image,
    };
  }

//! for getting the data from the firebase in the type of json(map).

  factory BrandModel.fromJson(Map<String, dynamic> data) {
    // final data = snapshot.data() as Map<String, dynamic>;

    if (data.isEmpty) return BrandModel.empty();

    return BrandModel(
        id: data['id'] ?? '',
        image: data['image'] ?? '',
        name: data['name'] ?? '',
        productsCount: data['productsCount'] ?? '',
        isFeatured: data['isFeatured']! ?? false);
  }

  factory BrandModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data();

      return BrandModel(
          id: document.id,
          name: data!['name'] ?? '',
          image: data['image'] ?? '',
          productsCount: data['productsCount'] ?? '',
          isFeatured: data['isFeatured'] ?? false);
    } else {
      return BrandModel.empty();
    }
  }
}
