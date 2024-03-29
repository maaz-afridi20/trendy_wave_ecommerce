/* -- Light & Dark Elevated Button Themes -- */
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  //! Light Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor:
          TColors.light, //foregroundColor is the color of the text.
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.darkGrey,
      disabledBackgroundColor: TColors.buttonDisabled,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );

  //! Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.light,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.darkGrey,
      disabledBackgroundColor: TColors.darkerGrey,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );
}
