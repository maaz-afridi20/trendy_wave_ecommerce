import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserController extends GetxController {
  // variables
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  Rx<UserModel> user = UserModel.empty().obs;
  final profileLoading = false.obs;
  final hidePasswords = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final RxBool isImageUploading = false.obs;
  final RxBool isObsecure = true.obs;
  GlobalKey<FormState> reAuthFormkey = GlobalKey<FormState>();

  @override
  void onInit() {
    fetchUserRecord();
    super.onInit();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      // iss (this) ka matlab hai k hm ye
      // jo ooper declare hua haii variables.. mein iss ka kah rahay hain..
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      //
      // this will update the Rx user value
      // if it is already there it will not do that again.
      await fetchUserRecord();

      if (user.value.id.isEmpty) {
        if (userCredentials != null) {
          final nameParts =
              UserModel.nameParts(userCredentials.user!.displayName ?? '');
          final userName = UserModel.generateUserName(
              userCredentials.user!.displayName ?? '');

          // map the data.
          final newUser = UserModel(
              id: userCredentials.user!.uid,
              firstName: nameParts[0],
              lastName: nameParts.length > 1 ? nameParts.sublist(1).join() : '',
              email: userCredentials.user!.email ?? '',
              userName: userName,
              phoneNumber: userCredentials.user!.phoneNumber ?? '',
              profilePicture: userCredentials.user!.photoURL ?? '');

          // saving the user data.
          await userRepository.saveUserData(newUser);
        }
      }
    } catch (e) {
      TLoaders.warningSnackbar(
          title: 'Data not saved',
          message: 'Something went wrong while saving your information.');
    }
  }

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(TSizes.md),
        title: 'Delete Account?',
        middleText:
            'Are you sure you want to delete this account account. All of your data,info will be deleted and will not be recoverred',
        confirm: ElevatedButton(
            onPressed: () => deleteUserAccount(),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: const BorderSide(color: Colors.red)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: TSizes.lg),
              child: Text('Delete'),
            )),
        cancel: OutlinedButton(
            onPressed: () => Get.back(), child: const Text('Cancel')));
  }

  void deleteUserAccount() async {
    try {
      TFullScreenLoader.openLoading('Deleting Account', TImages.docerAnimation);

      // first we have to authenticate the user.
      final auth = AuthenticationRespsitory.instance;
      // this provider is that, like by which method that
      // the user was logged in. like google or email etc.
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;
      if (provider.isNotEmpty) {
        if (provider == 'google.com') {
          await auth.googleSignIn();
          await auth.deleteAccount();
          TFullScreenLoader.stopLoading();
          Get.offAll(() => const LoginScreen());
        } else if (provider == 'password') {
          TFullScreenLoader.stopLoading();
          Get.offAll(() => const ReAuthLoginForm());
        }
      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnackbar(title: 'Opps', message: e.toString());
    }
  }

  Future<void> reAuthenticateEmailAndPassword() async {
    try {
      TFullScreenLoader.openLoading('Processing', TImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.customToast(message: 'No Internet Connection');
        return;
      }
      //! form validation
      if (!reAuthFormkey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRespsitory.instance
          .reAuthenticateWithEmailAndPassword(
              verifyEmail.text.trim(), verifyPassword.text.trim());
      await AuthenticationRespsitory.instance.deleteAccount();
      TFullScreenLoader.stopLoading();
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnackbar(title: 'Oppss', message: e.toString());
    }
  }

  //! upload the profile image to firebase.

  Future<void> uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          imageQuality: 70,
          maxHeight: 512,
          maxWidth: 512);
      if (image != null) {
        isImageUploading.value = true;
        final imageUrl =
            await userRepository.uploadImage("Users/Images/Profile/", image);

        // now update the user image.
        Map<String, dynamic> json = {'ProfilePicture': imageUrl};
        await userRepository.updateSingleField(json);

        user.value.profilePicture = imageUrl;
        user.refresh();
        TLoaders.successSnackbar(
            title: 'Congratulations',
            message: 'Successfully updated your profile picture');
      }
    } catch (e) {
      TLoaders.errorSnackbar(
          title: 'Oppss!', message: 'something went wrong $e');
    } finally {
      isImageUploading.value = false;
    }
  }

  // for copyning to clipboard.
  Future<void> copyToClipboard(String text, context) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
