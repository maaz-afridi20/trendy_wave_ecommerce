import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllers());
    return Scaffold(
      body: Stack(
        children: [
          //! Horizontal Scrollable pages.
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          //! Skip button.
          const OnBoardingSkipButton(),

          //! dot navigator smooth page indicator.
          const OnBoardingDotNavigator(),

          //! circular button.
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
