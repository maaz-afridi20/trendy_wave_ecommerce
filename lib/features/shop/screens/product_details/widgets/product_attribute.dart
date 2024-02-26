import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();

    final chipController = Get.put(ChipController());

    return Column(
      children: [
        //! selected attributes pricing and description..
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //! title row and status.
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),

                          //
                          //Actual prize.
                          Text('\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          //Sale price.
                          const TProductPriceText(price: '20')
                        ],
                      ),

                      //! stock...
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //
              //! Variations Description..
              //
              const TProductTitleText(
                title:
                    'This is a description of the product and the description of the product',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        //
        //! Attributes
        //

        Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading(title: 'Colors', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Wrap(spacing: 8, children: [
                TCoiceChip(
                    text: 'Yellow',
                    isSelected: chipController.isColorSelectedList[0].value,
                    onSelected: (value) {
                      chipController.isColorSelectedList[0].value =
                          !chipController.isColorSelectedList[0].value;
                    }),
                TCoiceChip(
                    text: 'Blue',
                    isSelected: chipController.isColorSelectedList[1].value,
                    onSelected: (value) {
                      chipController.isColorSelectedList[1].value =
                          !chipController.isColorSelectedList[1].value;
                    }),
                TCoiceChip(
                    text: 'Teal',
                    isSelected: chipController.isColorSelectedList[2].value,
                    onSelected: (value) {
                      chipController.isColorSelectedList[2].value =
                          !chipController.isColorSelectedList[2].value;
                    }),
              ]),
            ],
          ),
        ),

        Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading(title: 'Sizes', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: List.generate(
                  chipController.isSizeSelectedList.length,
                  (index) => TCoiceChip(
                    text: 'EU ${32 + 2 * index}',
                    isSelected: chipController.isSizeSelectedList[index].value,
                    onSelected: (value) {
                      chipController.isSizeSelectedList[index].value =
                          !chipController.isSizeSelectedList[index].value;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
