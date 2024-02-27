import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Scaffold(
      appBar: TAppbar(
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItemsInCartFolder(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              //! coupon textfield...
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //! billing section...
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    //pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //divider
                    Divider(),

                    //payment method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //!Address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //Checkout Button...
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success',
                  subTitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
