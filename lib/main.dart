// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:buyer_app/counter/counter_cubit.dart';
import 'package:buyer_app/full_screen_container.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'counter/counter_widget.dart';
import 'my_floating_element.dart';

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
    assert(app != null);
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
      home: MyHomePage(title: 'Project Buyer App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingElement(_counter),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FullScreenContainer(
        context: context,
        child: CounterWidget(_counter),
      ),
    );
  }
}
