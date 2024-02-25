import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //! Product Image Slider..
            TProductImageSlider(),

            //! Product Details.
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // rating and share..
                  TRatingAndShare(),

                  // price, title, stock and brand...

                  TProductMetaData(),

                  // attributes..

                  // checkout..

                  // description..

                  // reviews..
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
