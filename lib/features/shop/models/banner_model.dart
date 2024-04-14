import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class BannerModel {
  String imageUrl;
  bool active;
  String targetScreen;

  BannerModel(
      {required this.imageUrl,
      required this.active,
      required this.targetScreen});

  Map<String, dynamic> toJson() {
    return {
      'ImageUrl ': imageUrl,
      'TargetScreen': targetScreen,
      'Active': active,
    };
  }

//! this method only receiver data from the fireabe in the
//! same way that we upload the data to the fireabe
  factory BannerModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;

    return BannerModel(
        imageUrl: data['ImageUrl'] ?? '',
        active: data['Active'] ?? false,
        targetScreen: data['TargetScreen'] ?? '');
  }
}
