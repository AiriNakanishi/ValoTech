// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA9Ayqk1t4fr95_FXNAV6k0hpKWi0HYBy4',
    appId: '1:727092491854:web:f23564014dc2be9dc4351f',
    messagingSenderId: '727092491854',
    projectId: 'valotech-a3488',
    authDomain: 'valotech-a3488.firebaseapp.com',
    storageBucket: 'valotech-a3488.appspot.com',
    measurementId: 'G-S7K0QZQZXZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyghSuJ6eAl16OnZdUBnMyaERIPbENeQw',
    appId: '1:727092491854:android:441e9fbe6d3c1173c4351f',
    messagingSenderId: '727092491854',
    projectId: 'valotech-a3488',
    storageBucket: 'valotech-a3488.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBm-thBKG2ec8qN3AxtJlGUoQI_ZJrCTh8',
    appId: '1:727092491854:ios:d4b32e94c47d4e09c4351f',
    messagingSenderId: '727092491854',
    projectId: 'valotech-a3488',
    storageBucket: 'valotech-a3488.appspot.com',
    iosBundleId: 'com.example.valotech',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBm-thBKG2ec8qN3AxtJlGUoQI_ZJrCTh8',
    appId: '1:727092491854:ios:d4b32e94c47d4e09c4351f',
    messagingSenderId: '727092491854',
    projectId: 'valotech-a3488',
    storageBucket: 'valotech-a3488.appspot.com',
    iosBundleId: 'com.example.valotech',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9Ayqk1t4fr95_FXNAV6k0hpKWi0HYBy4',
    appId: '1:727092491854:web:d0d01d312eb89d98c4351f',
    messagingSenderId: '727092491854',
    projectId: 'valotech-a3488',
    authDomain: 'valotech-a3488.firebaseapp.com',
    storageBucket: 'valotech-a3488.appspot.com',
    measurementId: 'G-CSP3S5ZNHD',
  );

}