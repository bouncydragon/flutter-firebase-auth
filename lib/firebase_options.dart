// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      return web;
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD2R7u6tBet-DJT32YW9qbkF2Tu_3V6_jg',
    appId: '1:151324425436:web:4bfe57a7a4953e68e50819',
    messagingSenderId: '151324425436',
    projectId: 'flutter-firebase-auth-c7a52',
    authDomain: 'flutter-firebase-auth-c7a52.firebaseapp.com',
    storageBucket: 'flutter-firebase-auth-c7a52.appspot.com',
    measurementId: 'G-VB7YBBEQ17',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_55z0VTs8BSHdPKby3pPXUyx8zjswdnY',
    appId: '1:151324425436:android:502ec716e5ec38f1e50819',
    messagingSenderId: '151324425436',
    projectId: 'flutter-firebase-auth-c7a52',
    storageBucket: 'flutter-firebase-auth-c7a52.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5ToPx7c0LWr8eA_fRs4VXmwsAQSHsmgU',
    appId: '1:151324425436:ios:380904a29a0c0361e50819',
    messagingSenderId: '151324425436',
    projectId: 'flutter-firebase-auth-c7a52',
    storageBucket: 'flutter-firebase-auth-c7a52.appspot.com',
    iosClientId: '151324425436-qd7cb8i1aecc7ed3f9pfnaktpq32vv1c.apps.googleusercontent.com',
    iosBundleId: 'com.origami.app',
  );
}