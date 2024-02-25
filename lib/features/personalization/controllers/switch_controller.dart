import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class SwitchController extends GetxController {
  final dark = THelperFunctions.isDarkMode();

  Widget buildSwithTile(
      BuildContext context, String title, String subtitle, RxBool switchValue) {
    return Obx(
      () => TSettingsMenuTile(
        icon: Iconsax.image,
        title: title,
        subtitle: subtitle,
        trailing: Switch(
            value: switchValue.value,
            onChanged: (value) {
              switchValue.value = value;
              Get.snackbar(
                  value ? '$title on' : '$title off', value ? subtitle : '',
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: dark ? Colors.white : Colors.black,
                  backgroundColor: dark ? TColors.white : TColors.lightGrey);
            }),
      ),
    );
  }
}
