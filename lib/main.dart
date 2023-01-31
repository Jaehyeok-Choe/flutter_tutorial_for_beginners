import 'package:flutter/material.dart';
import 'package:flutter_tutorial_for_beginners/ScreenA.dart';
import 'package:flutter_tutorial_for_beginners/ScreenB.dart';
import 'package:flutter_tutorial_for_beginners/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
