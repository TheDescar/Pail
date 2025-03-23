import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJtlAZZxMLR2EoId7ImIsnVyXNsMCFSQU",
            authDomain: "saa-s-cloud-file-manage-r67dpu.firebaseapp.com",
            projectId: "saa-s-cloud-file-manage-r67dpu",
            storageBucket: "saa-s-cloud-file-manage-r67dpu.firebasestorage.app",
            messagingSenderId: "402688925730",
            appId: "1:402688925730:web:15ee8912fb93196816aa7b"));
  } else {
    await Firebase.initializeApp();
  }
}
