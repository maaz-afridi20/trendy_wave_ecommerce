import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //! Curved Edges.
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //! Appbar.
                  THomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //! Search Bar.
                  TSearchContainer(text: 'Search In Store...'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //! Categories.
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //! Heading..
                        TSectionHeading(
                            title: 'Popular Products',
                            showActionButton: false,
                            textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //! Categories..
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //! Content below blue part.
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //
                  //! Product card.
                  // popular products.
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
