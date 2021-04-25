import 'dart:html';
import 'package:buyer_app/counter.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder(
          bloc: _counter,
          builder: (context, counter) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
