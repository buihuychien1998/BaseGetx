// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBtYdM7Og4Ymnlta67Gyt0qy2enpV1e_Zc',
    appId: '1:754653310732:web:28e7fb020ffca05363a329',
    messagingSenderId: '754653310732',
    projectId: 'flutter-getx-base-project',
    authDomain: 'flutter-getx-base-project.firebaseapp.com',
    storageBucket: 'flutter-getx-base-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBd67LXICMeNxCDe3BAnmioWkckIRZ3k1Y',
    appId: '1:754653310732:android:4aa8db9afd4cb26763a329',
    messagingSenderId: '754653310732',
    projectId: 'flutter-getx-base-project',
    storageBucket: 'flutter-getx-base-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDppyMn5WF93R0bDmqcU5BfkGyoq8teRlU',
    appId: '1:754653310732:ios:becae31c543c040b63a329',
    messagingSenderId: '754653310732',
    projectId: 'flutter-getx-base-project',
    storageBucket: 'flutter-getx-base-project.appspot.com',
    iosClientId: '754653310732-8c9mmaebb5ovme4ooarl93d1uakfcqiu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterGetxBaseProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDppyMn5WF93R0bDmqcU5BfkGyoq8teRlU',
    appId: '1:754653310732:ios:ff2e3ab58365433a63a329',
    messagingSenderId: '754653310732',
    projectId: 'flutter-getx-base-project',
    storageBucket: 'flutter-getx-base-project.appspot.com',
    iosClientId: '754653310732-pts83iokp28j8l1kqimpq4n80f8p0osg.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterGetxBaseProject.RunnerTests',
  );
}
