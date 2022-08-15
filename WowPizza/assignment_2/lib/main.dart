import 'package:assignment_2/veggi.dart';
import 'package:flutter/material.dart';
import 'veggi.dart';
import 'homePage.dart';
import 'facebook.dart';
import 'instagram.dart';
import 'cheesi.dart';
import 'fries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),



      routes: {
        '0': (context) => homePage(),
        '1': (context) => veggi(),
        '2': (context) => facebook(),
        '3': (context) => instagram(),

        '4': (context) => cheesi(),
        '5': (context) => fries(),



      },

    );
  }
}
