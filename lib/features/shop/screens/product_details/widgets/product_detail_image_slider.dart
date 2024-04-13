import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    final deviceStorage = GetStorage();
    bool isLikedInitially = (deviceStorage.read('isLiked') ?? false);
    RxBool isLiked = isLikedInitially.obs;
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
                        imageUrl: TImages.productImage4),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                    itemCount: 5),
              ),
            ),

            //! appbar icons...
            TAppbar(
              showBackArrow: true,
              actions: [
                Obx(() => TCircularIcon(
                    onPress: () {
                      isLiked.value = !isLiked.value;
                      deviceStorage.write('isLiked', isLiked.value);
                      THelperFunctions.showSnackBar(isLiked.value
                          ? 'added to favourites'
                          : 'removed from favourites');
                    },
                    icon: Iconsax.heart5,
                    color: isLiked.value ? Colors.red : TColors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
