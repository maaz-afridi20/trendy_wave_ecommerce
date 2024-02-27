import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Column(
      children: [
        TSectionHeading(
            title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        8.heightBox,
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(
                  image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
            8.widthBox,
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ],
    );
  }
}
