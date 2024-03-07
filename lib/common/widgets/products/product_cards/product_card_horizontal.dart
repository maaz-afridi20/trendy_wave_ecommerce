import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return GestureDetector(
      onTap: () => const ProductDetailsScreen(),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.lightContainer),
        child: Row(
          children: [
            TRoundedContainer(
              padding: const EdgeInsets.all(8),
              height: 120,
              backgroundColor: dark ? TColors.black : TColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(
                        imageUrl: TImages.productImage1,
                        applyImageRadius: true),
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),

                  //Favourite icon button..

                  const Positioned(
                    right: 0,
                    top: 0,
                    child:
                        TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            //details...
            SizedBox(
              width: 170,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(
                            title:
                                'Green nike half sleeves shirt'.toUpperCase(),
                            smallSize: true),
                        8.heightBox,
                        const TBrandTitleWithVerifiedIcon(title: 'Nike')
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: TProductPriceText(price: '350')),
                        Container(
                          decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      TSizes.productImageRadius))),
                          child: const SizedBox(
                            height: TSizes.iconLg * 1.2,
                            width: TSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(Iconsax.add, color: TColors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
