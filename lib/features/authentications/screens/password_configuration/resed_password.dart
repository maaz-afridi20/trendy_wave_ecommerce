import 'package:flutter/cupertino.dart';
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //! Image.
              Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),

              //! Title and Subtitle.
              Text(TTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              16.heightBox,
              Text(TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),

              32.heightBox,

              //! Button.
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(TTexts.done))),
              16.heightBox,
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
