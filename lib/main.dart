import 'package:buyer_app/url_input_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  FirebaseOptions get firebaseOptions => const FirebaseOptions(
      apiKey: "AIzaSyC-pYnQWogWnk8XAo5J8WQMgM0QUPqvUKM",
      authDomain: "buyer-app-75f46.firebaseapp.com",
      projectId: "buyer-app-75f46",
      storageBucket: "buyer-app-75f46.appspot.com",
      messagingSenderId: "1028113989599",
      appId: "1:1028113989599:web:32907f2bc2ca0ef8294e6a",
      measurementId: "G-8V4R3Q3R6P");

  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp();
    print('Initialized default app $app');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Buyer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UrlInputPage(),
    );
  }
}
