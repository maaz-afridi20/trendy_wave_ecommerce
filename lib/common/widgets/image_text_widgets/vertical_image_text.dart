import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onMTap,
    super.key,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onMTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return GestureDetector(
      onTap: onMTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: (dark ? TColors.light : TColors.dark),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
