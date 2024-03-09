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

  //Signup..

  Future<void> signUp() async {
    try {
      // start loading
      TFullScreenLoader.openLoading(
          'We are processing your info...', TImages.docerAnimation);

      // check the internet connection

      // form validation

      // check privacy policy

      // register the user and save the data in firebase

      // show success message

      // move to email verification screen
    } catch (e) {
      // show some error message if there is error.
    } finally {
      // remove the loader.
    }
  }
}
