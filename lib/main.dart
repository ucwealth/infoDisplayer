import 'package:flutter/material.dart';
import './form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Enter your Details"),
            backgroundColor: Colors.teal,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: DisplayInfoApp(),
          ),
        ));
  }
}
