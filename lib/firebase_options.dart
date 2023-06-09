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
    apiKey: 'AIzaSyDrq90Rx9zGGqPvXMdY7Lv_aNq5C2QR1dw',
    appId: '1:876212118085:web:07dc49133d54615a77392c',
    messagingSenderId: '876212118085',
    projectId: 'nickavi-app',
    authDomain: 'nickavi-app.firebaseapp.com',
    storageBucket: 'nickavi-app.appspot.com',
    measurementId: 'G-1VRPJDVVQE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyOv4iajjuMAXkI5ShemfWYVsLb1j2cCs',
    appId: '1:876212118085:android:0703622cd365671e77392c',
    messagingSenderId: '876212118085',
    projectId: 'nickavi-app',
    storageBucket: 'nickavi-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVlQ3MkUEF36W3UnabiRupVLBtiG2uOgg',
    appId: '1:876212118085:ios:aed5193d5356f1b877392c',
    messagingSenderId: '876212118085',
    projectId: 'nickavi-app',
    storageBucket: 'nickavi-app.appspot.com',
    iosClientId: '876212118085-3pklfmq7fk24chm10i2qrvalhjqpkj63.apps.googleusercontent.com',
    iosBundleId: 'com.app.nickaviApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVlQ3MkUEF36W3UnabiRupVLBtiG2uOgg',
    appId: '1:876212118085:ios:aed5193d5356f1b877392c',
    messagingSenderId: '876212118085',
    projectId: 'nickavi-app',
    storageBucket: 'nickavi-app.appspot.com',
    iosClientId: '876212118085-3pklfmq7fk24chm10i2qrvalhjqpkj63.apps.googleusercontent.com',
    iosBundleId: 'com.app.nickaviApp',
  );
}
