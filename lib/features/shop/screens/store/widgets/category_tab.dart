import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //! brands
                const TBrandShowCase(images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3
                ]),
                const TBrandShowCase(images: [
                  TImages.productImage4,
                  TImages.productImage5,
                  TImages.productImage6
                ]),

                //! products.
                const SizedBox(height: TSizes.spaceBtwItems),

                TSectionHeading(title: 'You might like..', onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems),

                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
