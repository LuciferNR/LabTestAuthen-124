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
    apiKey: 'AIzaSyDf9Wz3DvRGeQVMyL-KB6QYVbnJU86SLyQ',
    appId: '1:295792296575:web:bb99148b7aab03ee37354a',
    messagingSenderId: '295792296575',
    projectId: 'fir-test-124',
    authDomain: 'fir-test-124.firebaseapp.com',
    storageBucket: 'fir-test-124.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuwxeaCGxOmSnfm8aM-NY4DHE-9m_gcWc',
    appId: '1:295792296575:android:a71b11a96934b0cd37354a',
    messagingSenderId: '295792296575',
    projectId: 'fir-test-124',
    storageBucket: 'fir-test-124.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7r5zODh4qrqjWuF3XfJPAeAhrXf5w05k',
    appId: '1:295792296575:ios:e10f34a798d5caad37354a',
    messagingSenderId: '295792296575',
    projectId: 'fir-test-124',
    storageBucket: 'fir-test-124.appspot.com',
    iosClientId: '295792296575-vll0hhvfcp7h50m7nsq94dndi37av7of.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest124',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7r5zODh4qrqjWuF3XfJPAeAhrXf5w05k',
    appId: '1:295792296575:ios:e10f34a798d5caad37354a',
    messagingSenderId: '295792296575',
    projectId: 'fir-test-124',
    storageBucket: 'fir-test-124.appspot.com',
    iosClientId: '295792296575-vll0hhvfcp7h50m7nsq94dndi37av7of.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest124',
  );
}