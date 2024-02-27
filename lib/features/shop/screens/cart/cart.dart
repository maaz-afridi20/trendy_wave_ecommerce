import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) => Column(
                  children: [
                    //! cart items list..
                    const TCartItem(),

                    16.heightBox,

                    //! add or remove button.
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 70),
                            TProductQuantityWithAddAndRemoveButtons(),
                          ],
                        ),

                        //! Price..
                        TProductPriceText(price: '256'),
                      ],
                    ),
                  ],
                ),
            separatorBuilder: (_, __) =>
                const SizedBox(height: TSizes.spaceBtwSections),
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
