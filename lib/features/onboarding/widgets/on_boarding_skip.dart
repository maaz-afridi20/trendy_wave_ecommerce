import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingControllers.instance.skipPage(),
        child: const Text(TTexts.skip),
      ),
    );
  }
}
