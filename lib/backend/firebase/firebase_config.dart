import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAaEEWZFQ0brAyoNMweXgfNxrsQPhxv3BU",
            authDomain: "solana-6ceaf.firebaseapp.com",
            projectId: "solana-6ceaf",
            storageBucket: "solana-6ceaf.appspot.com",
            messagingSenderId: "980580349066",
            appId: "1:980580349066:web:7f04fb28369ac1cee06973"));
  } else {
    await Firebase.initializeApp();
  }
}
