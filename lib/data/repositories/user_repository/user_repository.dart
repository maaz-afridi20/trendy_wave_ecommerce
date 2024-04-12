import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //! function to save user data
  Future<void> saveUserData(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'some error occurred while saving user data';
    }
  }

  // function to fecth the user data based on user UID.
  Future<UserModel> fetchUserDetails() async {
    try {
      // to retrieve some specific data of user we have
      // to give the uid of that user in the doc().
      final documentSnapshot = await _db
          .collection('Users')
          // .doc(FirebaseAuth.instance.currentUser?.uid) // we can also do like this.
          .doc(AuthenticationRespsitory.instance.authUser?.uid)
          .get();
      // we have to conver the data to json format.
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'some error occurred while saving user data';
    }
  }

  // function to update user data
  Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db
          .collection("Users")
          .doc(updatedUser.id)
          .update(updatedUser.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'some error occurred while saving user data';
    }
  }

  // function to update single field.
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection("Users")
          .doc(AuthenticationRespsitory.instance.authUser?.uid)
          .update(json);
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'some error occurred while saving user data';
    }
  }

  // function to remove the data.
  Future<void> removeUserRecord(String userID) async {
    try {
      await _db.collection("Users").doc(userID).delete();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } on FormatException catch (_) {
      throw const TFormatException();
    } catch (e) {
      throw 'some error occurred while saving user data';
    }
  }
}
