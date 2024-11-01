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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiSeRVa807vJ5J_44lqSQgxlcJnxssEd8',
    appId: '1:285860428251:android:31150309079374cb488ffe',
    messagingSenderId: '285860428251',
    projectId: 'chatapptute-368a2',
    storageBucket: 'chatapptute-368a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAE4tf8zsznkPSQpFao2uxXwXP90oKdrDE',
    appId: '1:285860428251:ios:036e58d2e78bde66488ffe',
    messagingSenderId: '285860428251',
    projectId: 'chatapptute-368a2',
    storageBucket: 'chatapptute-368a2.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAE4tf8zsznkPSQpFao2uxXwXP90oKdrDE',
    appId: '1:285860428251:ios:036e58d2e78bde66488ffe',
    messagingSenderId: '285860428251',
    projectId: 'chatapptute-368a2',
    storageBucket: 'chatapptute-368a2.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}
