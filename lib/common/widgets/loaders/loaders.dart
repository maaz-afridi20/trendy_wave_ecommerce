import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TLoaders {
  static hideSnackbar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static successSnackbar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor: TColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: TColors.white),
    );
  }

  static warningSnackbar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.warning_2, color: TColors.white),
    );
  }

  static errorSnackbar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.warning_2, color: TColors.white),
    );
  }

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30),
          //     color: THelperFunction.isDarkMode(Get.context!)
          //         ? TColors.darkerGrey.withOpacity(0.9)
          //         : TColors.white),
          child:
              Text(message, style: Theme.of(Get.context!).textTheme.labelLarge),
        ),
      ),
    );
  }

  //! only it will show the popup
  static confirmationPopUp(
      String confirmText, String title, String middleText, Function() onPress) {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(TSizes.md),
        title: title,
        middleText: middleText,
        confirm: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(color: Colors.red)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
              child: Text(confirmText),
            )),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: const Text('Cancel')));
  }
}
