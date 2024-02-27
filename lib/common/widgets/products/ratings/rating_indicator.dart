import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TRatingbarIndicator extends StatelessWidget {
  const TRatingbarIndicator({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: TColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: TColors.primary),
    );
  }
}
