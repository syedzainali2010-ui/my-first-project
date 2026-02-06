import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:subhan/Register.dart';
import 'package:subhan/newpage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDuF-SW0B_JP7mupJajkMLgMtF2TGUa7cE",
          appId: "1:351658559629:android:46d861090f7d9969317ac4",
          messagingSenderId: "351658559629",
          projectId: "registerlogin-d0eds4"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Newpage(),
    );
  }
}
