import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Coding With T', style: Theme.of(context).textTheme.bodyLarge),
        8.heightBox,
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            16.heightBox,
            Text('+9231219948', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        8.heightBox,
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            16.heightBox,
            Text(
              'South, Liana, USA',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
