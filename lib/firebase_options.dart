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
    apiKey: 'AIzaSyCoYP_zf63gGJ-hHJSTQ43C4uoOnvT0xy8',
    appId: '1:974728477095:web:608f2420873eee48915e82',
    messagingSenderId: '974728477095',
    projectId: 'notifications-3eca3',
    authDomain: 'notifications-3eca3.firebaseapp.com',
    storageBucket: 'notifications-3eca3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDznGPvynuuTHCrCiMf-nm9O3bCQEMbSIA',
    appId: '1:974728477095:android:bfa0d3668d12143f915e82',
    messagingSenderId: '974728477095',
    projectId: 'notifications-3eca3',
    storageBucket: 'notifications-3eca3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiwTSDmYJW8lb0SehT3JPurHMt17QhB1E',
    appId: '1:974728477095:ios:248f305b3c64b836915e82',
    messagingSenderId: '974728477095',
    projectId: 'notifications-3eca3',
    storageBucket: 'notifications-3eca3.appspot.com',
    androidClientId: '974728477095-vct1lphh064f6il19luibvngn3jpcuee.apps.googleusercontent.com',
    iosBundleId: 'com.example.classicShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiwTSDmYJW8lb0SehT3JPurHMt17QhB1E',
    appId: '1:974728477095:ios:248f305b3c64b836915e82',
    messagingSenderId: '974728477095',
    projectId: 'notifications-3eca3',
    storageBucket: 'notifications-3eca3.appspot.com',
    androidClientId: '974728477095-vct1lphh064f6il19luibvngn3jpcuee.apps.googleusercontent.com',
    iosBundleId: 'com.example.classicShop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyClafUnB1h0y-1s0C8CPpmemyp5G0qiWyY',
    appId: '1:974728477095:web:d6a2d9e653f2477d915e82',
    messagingSenderId: '974728477095',
    projectId: 'notifications-3eca3',
    authDomain: 'notifications-3eca3.firebaseapp.com',
    storageBucket: 'notifications-3eca3.appspot.com',
  );

}