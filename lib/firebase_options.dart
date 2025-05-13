import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCvZeEibaDlFWm53Yzp6wAwyhxBtHGMjsU',
    appId: '1:92852936111:web:ff7be16cd996d84d3b635a',
    messagingSenderId: '92852936111',
    projectId: 'notesync-6ebe7',
    authDomain: 'notesync-6ebe7.firebaseapp.com',
    storageBucket: 'notesync-6ebe7.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvZeEibaDlFWm53Yzp6wAwyhxBtHGMjsU',
    appId: '1:92852936111:android:ff7be16cd996d84d3b635a',
    messagingSenderId: '92852936111',
    projectId: 'notesync-6ebe7',
    storageBucket: 'notesync-6ebe7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvZeEibaDlFWm53Yzp6wAwyhxBtHGMjsU',
    appId: '1:92852936111:ios:ff7be16cd996d84d3b635a',
    messagingSenderId: '92852936111',
    projectId: 'notesync-6ebe7',
    storageBucket: 'notesync-6ebe7.firebasestorage.app',
    iosClientId: '92852936111-jfrv5bl8guu2kbf5jsmk18neo6h13l39.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesync',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvZeEibaDlFWm53Yzp6wAwyhxBtHGMjsU',
    appId: '1:92852936111:ios:ff7be16cd996d84d3b635a',
    messagingSenderId: '92852936111',
    projectId: 'notesync-6ebe7',
    storageBucket: 'notesync-6ebe7.firebasestorage.app',
    iosClientId: '92852936111-jfrv5bl8guu2kbf5jsmk18neo6h13l39.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesync',
  );
}