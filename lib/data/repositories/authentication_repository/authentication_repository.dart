import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class AuthenticationRespsitory extends GetxController {
  static AuthenticationRespsitory get instance => Get.find();

  // variables..
  final deviceStorage = GetStorage();

  // this function will be called directly after the main
  // function is called.

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    if (kDebugMode) {
      print('.............get storage auth repo.........');
      print(deviceStorage.read('isFirstTime'));
    }

    // local storage.
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

//  ----------------------------------EMAIL AND PASSWORD SIGNIN----------------------------------------------

// [Email Authentication] Sign In

// [Email Authentication] Register

// [Re Authenticate] Re Authenticate user

// [Email Authentication] Forget Password

//  ----------------------------------Google Fb Sign In----------------------------------------------

// Google Sign In

// Facebook Sign In

//  --------------------------------------------------------------------------------

// valid for any user..

// delete the user and firestore account.
}
