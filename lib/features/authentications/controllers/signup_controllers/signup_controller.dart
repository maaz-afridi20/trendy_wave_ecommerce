import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //! Variables...

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final RxBool isObsecure = false.obs;
  final RxBool privacyPolicy = true.obs;

  //Signup..

  Future<void> signUp() async {
    try {
      //! start loading
      TFullScreenLoader.openLoading(
          'We are processing your info...', TImages.docerAnimation);

      //! check the internet connection

      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected == !true) {
        TLoaders.customToast(
            message: 'No Internet Connection', color: Colors.orange);
        return;
      }

      //! form validation
      if (!signupFormKey.currentState!.validate()) return;

      //! check privacy policy
      if (!privacyPolicy.value) {
        TLoaders.warningSnackbar(
            title: 'Privacy Policy',
            message:
                'In order to create your have to accept terms and conditions');
        return;
      }

      // register the user and save the data in firebase

      // show success message

      // move to email verification screen
    } catch (e) {
      // show some error message if there is error.
      TLoaders.errorSnackbar(title: 'Ohh!', message: e.toString());
    } finally {
      // remove the loader.
      TFullScreenLoader.stopLoading();
    }
  }
}
