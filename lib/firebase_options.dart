// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC89pVaJoZHQNgUyp3kG_4gJ-_sH0aDzKE',
    appId: '1:354725148927:android:dbfc519ee04a55aea7b4ca',
    messagingSenderId: '354725148927',
    projectId: 'trendy-waves-ecommerce',
    storageBucket: 'trendy-waves-ecommerce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5bSRzNyrE6BEw54mQ00ntrzLuuUgDDFQ',
    appId: '1:354725148927:ios:85ecda8f780e9e05a7b4ca',
    messagingSenderId: '354725148927',
    projectId: 'trendy-waves-ecommerce',
    storageBucket: 'trendy-waves-ecommerce.appspot.com',
    androidClientId: '354725148927-6c7qcgp73dmii6o2m9bkc1m693bp5tfg.apps.googleusercontent.com',
    iosClientId: '354725148927-1n2bq41s83ro6nbna95msf2chhvv39ec.apps.googleusercontent.com',
    iosBundleId: 'com.example.trendyWavesEcommerce',
  );
}