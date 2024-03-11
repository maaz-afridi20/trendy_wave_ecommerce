import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserModel {
  final String id;
  String firstName, lastName;
  final String userName, email;
  String phoneNumber, profilePicture;
  UserModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.userName,
      required this.phoneNumber,
      required this.profilePicture});

// helper function to get the full name..
  String get fullName => '$firstName $lastName';

// helper function to get the phone number
  String get formatedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

// helper function to split the first name and last name
  static List<String> nameParts(fullName) => fullName.split(" ");

// function to generate user name from full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(" ");

    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = '$firstName $lastName';
    String userNameWithPrefix = 'CWT_$camelCaseUsername';

    return userNameWithPrefix;
  }

// empty user model..

  static UserModel empty() => UserModel(
      id: '',
      firstName: '',
      lastName: '',
      email: '',
      userName: '',
      phoneNumber: '',
      profilePicture: '');

// conver model to json
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'UserName': userName,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data();
      return UserModel(
          id: document.id,
          firstName: data!['FirstName'],
          lastName: data['LastName'],
          email: data['Email'],
          userName: data['UserName'],
          phoneNumber: data['PhoneNumber'],
          profilePicture: data['ProfilePicture']);
    }
    return UserModel.empty();
  }
}
