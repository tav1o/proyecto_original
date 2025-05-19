import 'package:flutter/material.dart';
import 'package:proyecto/view/balon_oro.dart';
import 'package:proyecto/view/inicio.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futbol Pro',
      home: balon_oro()
    );
  }
}

