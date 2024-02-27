import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TBottomAddToCartWidget extends StatelessWidget {
  const TBottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    final RxInt countedItem = 1.obs;
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.defaultSpace, horizontal: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => Row(
              children: [
                TCircularIcon(
                  icon: Iconsax.minus,
                  width: 40,
                  height: 40,
                  backgroundColor: TColors.darkGrey,
                  color: TColors.white,
                  onPress: () {
                    if (countedItem.value == 0) {
                      THelperFunctions.showSnackBar(
                          'Value cannot be less then 0');
                    } else {
                      countedItem.value--;
                    }
                  },
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(countedItem.value.toString(),
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: TSizes.spaceBtwItems),
                TCircularIcon(
                  icon: Iconsax.add,
                  width: 40,
                  height: 40,
                  backgroundColor: TColors.black,
                  color: TColors.white,
                  onPress: () {
                    countedItem.value++;
                  },
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
            child: const SizedBox(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Iconsax.bag_2), Text('Add to bag')],
              ),
            ),
          )
        ],
      ),
    );
  }
}
