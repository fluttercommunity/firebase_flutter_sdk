// File created by
// Lung Razvan <long1eu>
// on 04/03/2020

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_dart/firebase_core_dart.dart';

FirebaseOptions get firebaseOptions {
  assert(isWeb);
  return const FirebaseOptions(
    apiKey: 'AIzaSyBQgB5s3n8WvyCOxhCws-RVf3C-6VnGg0A',
    databaseURL: 'https://flutter-sdk.firebaseio.com',
    projectID: 'flutter-sdk',
    storageBucket: 'flutter-sdk.appspot.com',
    gcmSenderID: '233259864964',
    clientID:
        '233259864964-atj096gj4dkn2q5iciufgrugequubseo.apps.googleusercontent.com',
    googleAppID: '1:233259864964:web:95ef638de4a4693dd583d1',
    trackingID: 'G-KFTS2799LM',
  );
}
