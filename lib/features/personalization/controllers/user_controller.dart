import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  Future<void> copyToClipboard(String text, context) async {
    await Clipboard.setData(ClipboardData(text: text));
    VxToast.show(msg: 'copied to clipboard $text', context);
  }
}
