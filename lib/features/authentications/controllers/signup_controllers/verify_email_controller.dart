import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // send the email verification.
  sendEmailVerification() async {
    try {
      await AuthenticationRespsitory.instance.sendEmailVerification();
      TLoaders.successSnackbar(
          title: 'Success',
          message:
              'Verification email has been sent. Please verify your email to continue');
    } catch (e) {
      TLoaders.errorSnackbar(title: 'Oops', message: e.toString());
    }
  }

  // automatically start the timer.
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            image: TImages.cgeckRegister,
            title: TTexts.yourAccountCreatedTitle,
            subTitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRespsitory.instance.screenRedirect()));
      }
    });
  }

// manually check the email verification..

  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
          image: TImages.cgeckRegister,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRespsitory.instance.screenRedirect()));
    }
  }
}
