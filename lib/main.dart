import 'package:flutter/material.dart';
import 'interface.dart';
import 'eng.dart';
import 'voca.dart';
import 'favorite.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Interface(),
    );
  }
}


