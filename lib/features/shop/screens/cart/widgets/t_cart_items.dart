import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Row(
      children: [
        //!Image
        TRoundedImage(
          imageUrl: TImages.productImage12,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //! title price and size...

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Samsung'),
              const Flexible(
                child:
                    TProductTitleText(title: 'Samsung galaxy S9', maxLines: 1),
              ),
              //Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Color: ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: ' Price: ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\$999',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
