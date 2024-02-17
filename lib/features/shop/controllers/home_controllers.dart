import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updateCurrentIndex(index) {
    carouselCurrentIndex.value = index;
  }
}
