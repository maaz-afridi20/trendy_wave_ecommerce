import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    final controller = OnBoardingControllers.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.primary,
            dotHeight: 7,
            dotWidth: 20,
          ),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3),
    );
  }
}
