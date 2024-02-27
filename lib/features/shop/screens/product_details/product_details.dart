import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //! Product Image Slider..
            const TProductImageSlider(),

            //! Product Details.
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // rating and share..
                  const TRatingAndShare(),

                  // price, title, stock and brand...

                  const TProductMetaData(),

                  // attributes..
                  const TProductAttributes(),
                  32.heightBox,

                  // checkout..

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('CheckOut'))),
                  32.heightBox,
                  // description..
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  16.heightBox,
                  const TReadmoreWidget(
                      text:
                          "the QuantumGlow LuminoSphere, a cutting-edge illuminating marvel that will redefine your perception of light. This sleek orb seamlessly blends advanced LED technology with futuristic design.",
                      trimLines: 2),

                  const Divider(),
                  16.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(109)',
                        showActionButton: false,
                        onPressed: () {},
                      ),
                      IconButton(
                          onPressed: () {
                            Get.to(() => const ProductReviewScreen());
                          },
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          )),
                    ],
                  ),
                  //
                  // reviews..
                  32.heightBox,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const TBottomAddToCartWidget(),
    );
  }
}
