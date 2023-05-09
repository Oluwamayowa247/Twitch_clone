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
    apiKey: 'AIzaSyDwIIENiX76jfAJsvCbJNmjvT7KrOMVg3s',
    appId: '1:965675010772:web:8cd2cca03ee798f7788941',
    messagingSenderId: '965675010772',
    projectId: 'twitch-clone-247a',
    authDomain: 'twitch-clone-247a.firebaseapp.com',
    storageBucket: 'twitch-clone-247a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWYQsZVCxsWcbMT49Fqw4EebK-KYAYZfo',
    appId: '1:965675010772:android:321f07f25ec12e2c788941',
    messagingSenderId: '965675010772',
    projectId: 'twitch-clone-247a',
    storageBucket: 'twitch-clone-247a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYrO6oJC3176wh6GKzvRqITHW3hCRGl4A',
    appId: '1:965675010772:ios:e2e6ed8a21564527788941',
    messagingSenderId: '965675010772',
    projectId: 'twitch-clone-247a',
    storageBucket: 'twitch-clone-247a.appspot.com',
    iosClientId: '965675010772-a9c2doac8lrsafhto15rnkj0lupqmdvg.apps.googleusercontent.com',
    iosBundleId: 'com.example.twitchClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYrO6oJC3176wh6GKzvRqITHW3hCRGl4A',
    appId: '1:965675010772:ios:e2e6ed8a21564527788941',
    messagingSenderId: '965675010772',
    projectId: 'twitch-clone-247a',
    storageBucket: 'twitch-clone-247a.appspot.com',
    iosClientId: '965675010772-a9c2doac8lrsafhto15rnkj0lupqmdvg.apps.googleusercontent.com',
    iosBundleId: 'com.example.twitchClone',
  );
}
