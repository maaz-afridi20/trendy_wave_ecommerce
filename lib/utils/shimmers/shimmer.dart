import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TShimmerEffect extends StatelessWidget {
  const TShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.readius = 15,
      this.color});

  final double width, height, readius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[300]!,
      child: Container(
        width: width.w,
        height: height.w,
        decoration: BoxDecoration(
            color: color ?? (dark ? TColors.darkGrey : TColors.white),
            borderRadius: BorderRadius.circular(readius.r)),
      ),
    );
  }
}
