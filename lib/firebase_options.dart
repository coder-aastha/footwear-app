import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid ? const FirebaseOptions(
    apiKey: 'AIzaSyBwTlh-PelVKLV4T_YGtaecnvBG18Z7Zqc',
    appId: '1:880540219709:android:9a5faf2ecaa32c6c65ed54',
    messagingSenderId: '880540219709',
    projectId: 'production-app-623eb') :

const FirebaseOptions(
    apiKey: 'AIzaSyCCF7rf6VXd0fDMxGI8bPx01ezg2BPvMMs',
    appId: '1:880540219709:ios:756892692d18ce0265ed54',
    messagingSenderId: '880540219709',
    projectId: 'production-app-623eb');