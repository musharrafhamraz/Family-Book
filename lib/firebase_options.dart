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
    apiKey: 'AIzaSyAksGi_psEDNzQCi3TMHkiqP5IET3SHnOY',
    appId: '1:774851522385:web:d5a7c62e9dbd14a29b6d70',
    messagingSenderId: '774851522385',
    projectId: 'familybook-b4846',
    authDomain: 'familybook-b4846.firebaseapp.com',
    storageBucket: 'familybook-b4846.appspot.com',
    measurementId: 'G-L8DR1MPLM2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8WbiwowzHDbP65E-2BMeIcY7Effrzb4w',
    appId: '1:774851522385:android:3960805f7468ecbe9b6d70',
    messagingSenderId: '774851522385',
    projectId: 'familybook-b4846',
    storageBucket: 'familybook-b4846.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCA9qpFNzbuig2G_uy5JhM7gMreuRSoxU0',
    appId: '1:774851522385:ios:11228912b5ab49959b6d70',
    messagingSenderId: '774851522385',
    projectId: 'familybook-b4846',
    storageBucket: 'familybook-b4846.appspot.com',
    iosClientId: '774851522385-d5duo9ghd81nq89540dr3aaloso2f16a.apps.googleusercontent.com',
    iosBundleId: 'com.musharraf.familybook',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCA9qpFNzbuig2G_uy5JhM7gMreuRSoxU0',
    appId: '1:774851522385:ios:11228912b5ab49959b6d70',
    messagingSenderId: '774851522385',
    projectId: 'familybook-b4846',
    storageBucket: 'familybook-b4846.appspot.com',
    iosClientId: '774851522385-d5duo9ghd81nq89540dr3aaloso2f16a.apps.googleusercontent.com',
    iosBundleId: 'com.musharraf.familybook',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAksGi_psEDNzQCi3TMHkiqP5IET3SHnOY',
    appId: '1:774851522385:web:aaf573c30d89d1a09b6d70',
    messagingSenderId: '774851522385',
    projectId: 'familybook-b4846',
    authDomain: 'familybook-b4846.firebaseapp.com',
    storageBucket: 'familybook-b4846.appspot.com',
    measurementId: 'G-J10K7MLPZV',
  );
}
