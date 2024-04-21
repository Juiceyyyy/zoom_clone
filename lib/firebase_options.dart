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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBuEx1_TuN4Lh-V9SL39vBL6pifrd9C0Ro',
    appId: '1:29678658729:web:819368ceb7192cd02835b8',
    messagingSenderId: '29678658729',
    projectId: 'zoom-clone-59e12',
    authDomain: 'zoom-clone-59e12.firebaseapp.com',
    databaseURL: 'https://zoom-clone-59e12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-59e12.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2GSrzbNbF_18tOeJiYneuzEWLL9b5gSM',
    appId: '1:29678658729:android:6ec1913cbae5271e2835b8',
    messagingSenderId: '29678658729',
    projectId: 'zoom-clone-59e12',
    databaseURL: 'https://zoom-clone-59e12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-59e12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBu4EOAHRdvQFewRob6QF8GVvTcbWZMYBc',
    appId: '1:29678658729:ios:8c14811f8438cc662835b8',
    messagingSenderId: '29678658729',
    projectId: 'zoom-clone-59e12',
    databaseURL: 'https://zoom-clone-59e12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-59e12.appspot.com',
    androidClientId: '29678658729-8ka9bjnbgsul7t7pejdh9k5t2t9ctk3m.apps.googleusercontent.com',
    iosClientId: '29678658729-0lnfr47pccj2s01tvv6eskr5db0k9fjb.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoom',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBuEx1_TuN4Lh-V9SL39vBL6pifrd9C0Ro',
    appId: '1:29678658729:web:38ef85bb64ad6a492835b8',
    messagingSenderId: '29678658729',
    projectId: 'zoom-clone-59e12',
    authDomain: 'zoom-clone-59e12.firebaseapp.com',
    databaseURL: 'https://zoom-clone-59e12-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-59e12.appspot.com',
  );

}