import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final userName =
            UserModel.generateUserName(userCredentials.user!.displayName ?? '');

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
    } catch (e) {
      TLoaders.warningSnackbar(
          title: 'Data not saved',
          message: 'Something went wrong while saving your information.');
    }
  }

  Future<void> copyToClipboard(String text, context) async {
    await Clipboard.setData(ClipboardData(text: text));
    VxToast.show(msg: 'copied to clipboard $text', context);
  }
}
