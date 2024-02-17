import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    required this.banners,
    super.key,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              onPageChanged: (index, _) => controller.updateCurrentIndex(index),
              viewportFraction: 1,
              enlargeCenterPage: true,
              autoPlay: true),
        ),
        16.heightBox,
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  width: controller.carouselCurrentIndex.value == i ? 35 : 15,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
