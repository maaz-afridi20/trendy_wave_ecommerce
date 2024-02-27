import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductQuantityWithAddAndRemoveButtons extends StatelessWidget {
  const TProductQuantityWithAddAndRemoveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: dark ? TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkGrey : TColors.light,
        ),
        16.widthBox,
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        16.widthBox,
        const TCircularIcon(
          icon: Iconsax.add,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
