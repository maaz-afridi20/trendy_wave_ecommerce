import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            // main large image..
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(16.0 * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage5),
                  ),
                ),
              ),
            ),

            // image slider...

            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) => TRoundedImage(
                        width: 80,
                        padding: const EdgeInsets.all(TSizes.sm),
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        imageUrl: TImages.productImage3),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                    itemCount: 5),
              ),
            ),

            //! appbar icons...
            const TAppbar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
