import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        32.heightBox,
        TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
