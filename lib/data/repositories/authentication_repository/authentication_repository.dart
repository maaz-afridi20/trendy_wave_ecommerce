import 'package:google_sign_in/google_sign_in.dart';
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
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
// local storage.
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

//  ----------------------------------EMAIL AND PASSWORD SIGNIN----------------------------------------------

// [Email Authentication] Register

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong! try again later';
    }
  }

  //! this will send email verification.. email
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'some error occurred while sending email';
    }
  }

// [Email Authentication] Sign In

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong when signing in';
    }
  }

// [Re Authenticate] Re Authenticate user

// [Email Authentication] Forget Password

//!  ----------------------------------Google Fb Sign In----------------------------------------------

//! Google Sign In

  Future<UserCredential?> googleSignIn() async {
    try {
      //this will show the popup.. of all the
      // accounts. like default dialog bar.
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      // now we have to authenticate the user.
      // this will do the authentication of that account which
      // we click
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      // now from google when the account is authenticated
      // we will now create that account in firebase.
      //! with new credentials.
      final credtials = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      // after this all these credentials we will save in firebase.
      return await _auth.signInWithCredential(credtials);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      if (kDebugMode) print('error $e');
      throw 'Something went wrong when signing in';
    }
  }

// Facebook Sign In

//  --------------------------------------------------------------------------------

// valid for any user..

// delete the user and firestore account.

// logOut the user.
  Future<void> logOut() async {
    try {
      TFullScreenLoader.openLoading('Loading...', TImages.docerAnimation);
      await GoogleSignIn().signOut();
      await _auth.signOut();
      TFullScreenLoader.stopLoading();
      Get.off(() => const LoginScreen());
      TLoaders.successSnackbar(
          title: 'Sussessfully signed out',
          message: 'GORU BO BACHAY ZA WRAK SHAA OSS!');
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      TLoaders.errorSnackbar(title: "Opss", message: e.toString());
    }
  }
}
