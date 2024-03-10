import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TTermAndConditions extends StatelessWidget {
  const TTermAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    final controller = SignupController.instance;
    return Row(
      children: [
        Obx(() => Checkbox(
            value: controller.privacyPolicy.value,
            onChanged: (value) => controller.privacyPolicy.value =
                !controller.privacyPolicy.value)),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary)),
              TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary)),
            ]),
          ),
        ),
      ],
    );
  }
}
