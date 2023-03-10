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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBnPNUIau2CSJ6dY7YBlPXXfc7uz_uGvaU',
    appId: '1:57216164617:web:77b74ef870443c81e7a9d8',
    messagingSenderId: '57216164617',
    projectId: 'havilaway',
    authDomain: 'havilaway.firebaseapp.com',
    storageBucket: 'havilaway.appspot.com',
    measurementId: 'G-WJWV4Y5LWE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqPX27ZB0HOvLMFxmHdSc5Sp_SYeZw95c',
    appId: '1:57216164617:android:90121206a9169019e7a9d8',
    messagingSenderId: '57216164617',
    projectId: 'havilaway',
    storageBucket: 'havilaway.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKoyzeV1EpwCnCG66fiSsDyzfqY0HFn5I',
    appId: '1:57216164617:ios:8361bbc29d5ad214e7a9d8',
    messagingSenderId: '57216164617',
    projectId: 'havilaway',
    storageBucket: 'havilaway.appspot.com',
    iosClientId: '57216164617-bm36ebu4auuh8bq5k7fok4fu2fd05lh3.apps.googleusercontent.com',
    iosBundleId: 'com.example.havilaway',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKoyzeV1EpwCnCG66fiSsDyzfqY0HFn5I',
    appId: '1:57216164617:ios:8361bbc29d5ad214e7a9d8',
    messagingSenderId: '57216164617',
    projectId: 'havilaway',
    storageBucket: 'havilaway.appspot.com',
    iosClientId: '57216164617-bm36ebu4auuh8bq5k7fok4fu2fd05lh3.apps.googleusercontent.com',
    iosBundleId: 'com.example.havilaway',
  );
}
