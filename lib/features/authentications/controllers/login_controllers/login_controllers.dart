import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  // variables
  final RxBool isObsecure = true.obs;
  final RxBool rememberMe = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FormState> loginFormkey = GlobalKey<FormState>();

  //

  Future<void> signIn() async {
    try {
      //! start the loading..
      TFullScreenLoader.openLoading('Loading...', TImages.docerAnimation);

      //! form validation...
      if (!loginFormkey.currentState!.validate()) {
        if (kDebugMode) print('not run thiss.');
        return;
      }

      //! check the internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected == !true) {
        TLoaders.customToast(message: 'No internet connection');
        if (kDebugMode) print(isConnected);
        return;
      }

      //! pricavy policy..
      if (rememberMe.value) {
        return;
      }

      //! signing the user.
      await AuthenticationRespsitory.instance
          .signInWithEmailAndPassword(email.text.trim(), password.text.trim());

      //! showing the success message.
      TLoaders.successSnackbar(
          title: 'Congratulations', message: 'Successfully Logged In');

      //
      Get.to(() => const NavigationMenu());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Ohh!', message: e.toString());
    }
  }
}
