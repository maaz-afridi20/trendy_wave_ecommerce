class ProductVariationModel {
  final String id;
  String sku;
  String image;
  String? description;
  double price;
  double salePrice;
  int stock;
  Map<String, String> attributesValues;

  ProductVariationModel({
    required this.id,
    this.sku = '',
    this.image = '',
    this.description = '',
    this.price = 0.0,
    this.salePrice = 0.0,
    this.stock = 0,
    required this.attributesValues,
  });

  //! empty product variation model

  static ProductVariationModel empty() =>
      ProductVariationModel(id: '', attributesValues: {});

  //! convert to json

  toJson() {
    return {
      'id': id,
      'stock': stock,
      'price': price,
      'salePrice': salePrice,
      'image': image,
      'description': description,
      'attributesValues': attributesValues,
    };
  }

  //! comming data from firebase.

  factory ProductVariationModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return ProductVariationModel.empty();

    return ProductVariationModel(
      id: data['Id'] ?? '',
      // price: data['Price'] ?? 0.0,
      price: double.parse((data['Price'] ?? 0.0).toString()),
      sku: data['Sku'] ?? '',
      stock: data['Stock'] ?? 0,
      // salePrice: data['SalePrice'] ?? 0.0,
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      image: data['Image'] ?? '',
      description: data['Description'] ?? '',
      attributesValues:
          Map<String, String>.from(data['AttributesValues'] ?? {}),
    );
  }
}
