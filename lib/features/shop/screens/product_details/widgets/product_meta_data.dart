import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // price and sale tag.
        Row(
          children: [
            // sale tag.
            TRoundedContainer(
              radius: TSizes.sm,
              padding: const EdgeInsets.symmetric(
                vertical: TSizes.sm,
                horizontal: TSizes.xs,
              ),
              backgroundColor: TColors.secondary.withOpacity(0.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            16.widthBox,
            // price.
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            16.widthBox,
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        // title.
        const TProductTitleText(
          title: 'Green Nike Sports Shirt',
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // stock status..
        Row(
          children: [
            const TProductTitleText(
              title: 'Status',
            ),
            16.widthBox,
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // brand..

        Row(
          children: [
            TCircularImage(
                image: TImages.nikeLogo,
                width: 32,
                height: 32,
                overlayColor: dark ? TColors.white : TColors.dark),
            const TBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
