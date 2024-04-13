import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 6});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return const Column(
            children: [
              TShimmerEffect(width: 55, height: 55, readius: 55),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              TShimmerEffect(width: 55, height: 8),
            ],
          );
        },
        separatorBuilder: (_, __) =>
            const SizedBox(width: TSizes.spaceBtwItems),
      ),
    );
  }
}
