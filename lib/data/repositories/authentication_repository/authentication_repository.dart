import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class AuthenticationRespsitory extends GetxController {
  static AuthenticationRespsitory get instance => Get.find();

  // variables..
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // this function will be called directly after the main
  // function is called.

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    // local storage.
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

//  ----------------------------------EMAIL AND PASSWORD SIGNIN----------------------------------------------

// [Email Authentication] Register

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw 'Something went wrong! try again later';
    }
  }

// [Email Authentication] Sign In

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw 'Something went wrong when signing in';
    }
  }

// [Re Authenticate] Re Authenticate user

// [Email Authentication] Forget Password

//  ----------------------------------Google Fb Sign In----------------------------------------------

// Google Sign In

// Facebook Sign In

//  --------------------------------------------------------------------------------

// valid for any user..

// delete the user and firestore account.
}
