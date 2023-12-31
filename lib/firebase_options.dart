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
    apiKey: 'AIzaSyDFDxngwVs3CjvRyPCqFedfehjHbo1570g',
    appId: '1:380755198824:web:1dd00934cf9129e3804cdd',
    messagingSenderId: '380755198824',
    projectId: 'karpicentrobd',
    authDomain: 'karpicentrobd.firebaseapp.com',
    storageBucket: 'karpicentrobd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOgSDqGiGpNRWQ0fUrLnyz3nwi0_ND7xk',
    appId: '1:380755198824:android:975056bfade87db9804cdd',
    messagingSenderId: '380755198824',
    projectId: 'karpicentrobd',
    storageBucket: 'karpicentrobd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKduggXcstdKdf3gP2kf5Ixb55hVz6J8s',
    appId: '1:380755198824:ios:26e19f8b2f06ad1a804cdd',
    messagingSenderId: '380755198824',
    projectId: 'karpicentrobd',
    storageBucket: 'karpicentrobd.appspot.com',
    iosClientId: '380755198824-4tb48sm0kcdcfqhudr29mhpdmpcm1crm.apps.googleusercontent.com',
    iosBundleId: 'com.example.test',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKduggXcstdKdf3gP2kf5Ixb55hVz6J8s',
    appId: '1:380755198824:ios:26e19f8b2f06ad1a804cdd',
    messagingSenderId: '380755198824',
    projectId: 'karpicentrobd',
    storageBucket: 'karpicentrobd.appspot.com',
    iosClientId: '380755198824-4tb48sm0kcdcfqhudr29mhpdmpcm1crm.apps.googleusercontent.com',
    iosBundleId: 'com.example.test',
  );
}
