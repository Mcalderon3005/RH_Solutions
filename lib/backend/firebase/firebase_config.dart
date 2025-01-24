import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCmGPUwDYVmBEzsDXSEuNtTmE8hIAbfIl0",
            authDomain: "hr-solutions-bf540.firebaseapp.com",
            projectId: "hr-solutions-bf540",
            storageBucket: "hr-solutions-bf540.firebasestorage.app",
            messagingSenderId: "374195929862",
            appId: "1:374195929862:web:847b23cf8a65769c88d487"));
  } else {
    await Firebase.initializeApp();
  }
}
