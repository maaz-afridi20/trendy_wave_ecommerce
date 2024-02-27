import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCartItemsInCartFolder extends StatelessWidget {
  const TCartItemsInCartFolder({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                //! cart items list..
                const TCartItem(),

                if (showAddRemoveButtons)
                  const SizedBox(height: TSizes.spaceBtwItems),

                //! add or remove button.
                if (showAddRemoveButtons)
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
        itemCount: 5);
  }
}
