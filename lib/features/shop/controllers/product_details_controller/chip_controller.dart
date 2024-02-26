import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ChipController extends GetxController {
  // final RxBool isSelected = false.obs;

  final List<RxBool> isSizeSelectedList =
      List.generate(10, (index) => false.obs);
  final List<RxBool> isColorSelectedList =
      List.generate(8, (index) => false.obs);
}
