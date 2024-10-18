// lib/main.dart
import 'package:flutter/material.dart';
import 'package:injectable_app/injection.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';

void main() {
  configureInjection("debug");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}
