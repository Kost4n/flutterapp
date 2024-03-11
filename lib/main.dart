import 'package:flutter/material.dart';
import 'package:flutterapp/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MyMaterialApp() ;
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.lightBlueAccent,
          child: RecordsList(records: {'FlutterApp' : true, 'Polit' : false, 'Home' : false, 'Blabla' : false}),
        ),
        // body: Column(
        //     children: <Widget> [
        //       RecordsList(records: ['Blabla', 'Blabla', 'Blabla', 'Blabla'])
        //     ]
        // ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('ToDo', style: TextStyle(color: Colors.white)),
                flexibleSpace: Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                Colors.red,
                Colors.blue
              ])
            ),
          ),
        ),
      )
    );
  }
}

