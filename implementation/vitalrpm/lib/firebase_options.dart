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
    apiKey: 'AIzaSyBoXTB1E1I1NAdBT7DDDZJlGdjDpolrRS0',
    appId: '1:93070175794:web:23955cc98596957df0d62b',
    messagingSenderId: '93070175794',
    projectId: 'vitalrpm-7cd41',
    authDomain: 'vitalrpm-7cd41.firebaseapp.com',
    storageBucket: 'vitalrpm-7cd41.appspot.com',
    measurementId: 'G-2QE9HRJZ9Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcmQeu6lUgEFAgqui-eaSc8Ur37W2MOBw',
    appId: '1:93070175794:android:677ff999f82a689cf0d62b',
    messagingSenderId: '93070175794',
    projectId: 'vitalrpm-7cd41',
    storageBucket: 'vitalrpm-7cd41.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApoVE28IRHIFSSuPjgfN49J-8w5K7HjPw',
    appId: '1:93070175794:ios:538992be265753c4f0d62b',
    messagingSenderId: '93070175794',
    projectId: 'vitalrpm-7cd41',
    storageBucket: 'vitalrpm-7cd41.appspot.com',
    iosClientId: '93070175794-mreah2h45jormh56b93kp1o4582obbnk.apps.googleusercontent.com',
    iosBundleId: 'com.example.vitalrpm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApoVE28IRHIFSSuPjgfN49J-8w5K7HjPw',
    appId: '1:93070175794:ios:538992be265753c4f0d62b',
    messagingSenderId: '93070175794',
    projectId: 'vitalrpm-7cd41',
    storageBucket: 'vitalrpm-7cd41.appspot.com',
    iosClientId: '93070175794-mreah2h45jormh56b93kp1o4582obbnk.apps.googleusercontent.com',
    iosBundleId: 'com.example.vitalrpm',
  );
}
