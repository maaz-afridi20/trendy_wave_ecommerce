import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class BrandCategoryModel {
  String brandId;
  String categoryId;
  BrandCategoryModel({
    required this.brandId,
    required this.categoryId,
  });

//! convert to json

  Map<String, dynamic> toJson() {
    return {
      'brandId': brandId,
      'categoryId': categoryId,
    };
  }

  factory BrandCategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return BrandCategoryModel(
        brandId: data['brandId'] ?? '', categoryId: data['categoryId'] ?? '');
  }
}
