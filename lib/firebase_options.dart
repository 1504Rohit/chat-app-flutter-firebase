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
    apiKey: 'AIzaSyASm9vfShNzH05uiWO5ddZqSEhyrDmiIbM',
    appId: '1:825198237007:web:ea690575eae27dd02b613a',
    messagingSenderId: '825198237007',
    projectId: 'lets-chat-aeb6f',
    authDomain: 'lets-chat-aeb6f.firebaseapp.com',
    storageBucket: 'lets-chat-aeb6f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0qbY7oEJR-CSmfixlIFn-yv-SE61DwWI',
    appId: '1:825198237007:android:46541d6a0fdb77912b613a',
    messagingSenderId: '825198237007',
    projectId: 'lets-chat-aeb6f',
    storageBucket: 'lets-chat-aeb6f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDub8jGAiBkkq-FOXszjq9e72KRPz6kgtA',
    appId: '1:825198237007:ios:10ce94db3c1d0c672b613a',
    messagingSenderId: '825198237007',
    projectId: 'lets-chat-aeb6f',
    storageBucket: 'lets-chat-aeb6f.appspot.com',
    androidClientId: '825198237007-karqhgj3nep7enakqj8i4ppoqipgecor.apps.googleusercontent.com',
    iosClientId: '825198237007-9a8oq8m1ouolag0vp366llubt06mannr.apps.googleusercontent.com',
    iosBundleId: 'com.example.letsChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDub8jGAiBkkq-FOXszjq9e72KRPz6kgtA',
    appId: '1:825198237007:ios:10ce94db3c1d0c672b613a',
    messagingSenderId: '825198237007',
    projectId: 'lets-chat-aeb6f',
    storageBucket: 'lets-chat-aeb6f.appspot.com',
    androidClientId: '825198237007-karqhgj3nep7enakqj8i4ppoqipgecor.apps.googleusercontent.com',
    iosClientId: '825198237007-9a8oq8m1ouolag0vp366llubt06mannr.apps.googleusercontent.com',
    iosBundleId: 'com.example.letsChat',
  );
}