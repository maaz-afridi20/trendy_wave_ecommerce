import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    required this.image,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding = TSizes.sm,
    this.isNetworkImage = false,
    super.key,
  });

  final String image;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backgroundColor ?? (dark ? TColors.black : TColors.white),
            borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Center(
            child: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: image,
                    progressIndicatorBuilder: (context, url, progress) =>
                        const TShimmerEffect(
                            width: 55, height: 55, readius: 55),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: fit,
                    color: overlayColor,
                  )
                : Image(
                    image: AssetImage(image),
                    color: overlayColor,
                    fit: fit,
                  ),
          ),
        ));
  }
}
