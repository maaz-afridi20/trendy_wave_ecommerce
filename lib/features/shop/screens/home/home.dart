import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //! Curved Edges.
            TPrimaryHeaderContainer(
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
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
