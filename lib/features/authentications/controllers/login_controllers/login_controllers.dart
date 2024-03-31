import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  // variables
  final RxBool isObsecure = true.obs;
  final RxBool rememberMe = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FormState> loginFormkey = GlobalKey<FormState>();

  //

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  Future<void> emailAndPasswordSignin() async {
    try {
      //! showing the animation of loading
      TFullScreenLoader.openLoading(
          'Logging In You :)', TImages.docerAnimation);

      //! form validation
      if (!loginFormkey.currentState!.validate()) {}

      //! check the internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TLoaders.customToast(message: 'No internet connection');
        TFullScreenLoader.stopLoading();
        return;
      }

      //! save the data if remember me is enabled
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //! login the user

      await AuthenticationRespsitory.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //! remove the loader

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackbar(
          title: 'HURRAY', message: 'successfully logged into your account');

      //! redirect to the screen

      AuthenticationRespsitory.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Ohh!', message: e.toString());
    }
  }
}



      // //! form validation...
      // if (!loginFormkey.currentState!.validate()) {
      //   if (kDebugMode) print('Not validated..');
      //   return;
      // }

      // //! check the internet connection
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   TLoaders.customToast(message: 'No internet connection');
      //   if (kDebugMode) print('no connection');
      //   return;
      // }

      // //! start the loading..
      // TFullScreenLoader.openLoading('Loading...', TImages.docerAnimation);

      // //! Remember Me..
      // if (rememberMe.value) {
      //   localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
      //   localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      //   return;
      // }

      // //! signing the user.
      // await AuthenticationRespsitory.instance
      //     .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // //! showing the success message.
      // TLoaders.successSnackbar(
      //     title: 'Congratulations', message: 'Successfully Logged In');

      // //
      // AuthenticationRespsitory.instance.screenRedirect();