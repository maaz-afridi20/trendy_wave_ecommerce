import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  // variables.
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormkey = GlobalKey<FormState>();

  // send passwowrd resete email.
  sendPasswordResetEmail() async {
    try {
      // start the loading.
      TFullScreenLoader.openLoading(
          'Processing your info.', TImages.docerAnimation);

      // validate textfield.
      if (!forgetPasswordFormkey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //check the connectivity...
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.customToast(message: 'No Connection.');
        return;
      }

      //this will send the email.
      await AuthenticationRespsitory.instance
          .sendPasswordResetEmail(email.text.trim());

      // remove the loader.
      TFullScreenLoader.stopLoading();

      // success message.
      TLoaders.successSnackbar(
          title: 'Email Sent',
          message:
              'Password reset email link has been sent to your email. Click on link to reset your password');

      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Error..', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      // start the loading.
      TFullScreenLoader.openLoading(
          'Processing your info.', TImages.docerAnimation);

      //check the connectivity...
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.customToast(message: 'No Connection.');
        return;
      }

      //this will send the email.
      await AuthenticationRespsitory.instance.sendPasswordResetEmail(email);

      // remove the loader.
      TFullScreenLoader.stopLoading();

      // success message.
      TLoaders.successSnackbar(
          title: 'Email sent'.capitalizeFirst,
          message:
              'Password reset email link has been sent to your email. Click on link to reset your password'
                  .tr);
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Error..', message: e.toString());
    }
  }
}
