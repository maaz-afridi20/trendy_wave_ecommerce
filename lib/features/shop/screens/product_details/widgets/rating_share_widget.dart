import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 34),
            8.heightBox,
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                const TextSpan(text: '(199)'),
              ]),
            ),
          ],
        ),
        //icon button..
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, size: TSizes.iconMd)),
      ],
    );
  }
}
