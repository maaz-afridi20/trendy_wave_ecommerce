class ProductAttributeModel {
  final String? name;
  final List<String>? values;

  ProductAttributeModel({
    this.name,
    this.values,
  });

//!  convert to json
  toJson() {
    return {
      'Name': name,
      'Values': values,
    };
  }

  //! data from firebase

  factory ProductAttributeModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return ProductAttributeModel();
    // return ProductAttributeModel(
    //   name: data['Name'] ?? '',
    //   values: (data['Values'] as List<dynamic>?)
    //           ?.map((value) => value.toString())
    //           .toList() ??
    //       [],
    // );

    return ProductAttributeModel(
        name: data.containsKey('Name') ? data['Name'] : '',
        values: List<String>.from(data['Values']));
  }
}
