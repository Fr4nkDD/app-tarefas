import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBFqxZ3GEx_4dTpZF2VO2wnD7QejmG-y38",
            authDomain: "applist2-41287.firebaseapp.com",
            projectId: "applist2-41287",
            storageBucket: "applist2-41287.appspot.com",
            messagingSenderId: "878376672102",
            appId: "1:878376672102:web:41de024436989459d086a7",
            measurementId: "G-Z4STZM0ZXQ"));
  } else {
    await Firebase.initializeApp();
  }
}
