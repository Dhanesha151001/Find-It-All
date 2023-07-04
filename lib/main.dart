import 'package:blackcoffer/refine.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  runApp(MyApp(title: '',));
}

class MyApp extends StatelessWidget {

  final Color _primaryColor = HexColor('#301c80');
  final Color _accentColor = HexColor('#cf88f2');

  MyApp({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blackcoffer',
      theme: ThemeData(
        primaryColor: _primaryColor,
        secondaryHeaderColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.purple,
      ),
      home: Refine(title: 'Blackcoffer'),
    );
  }
}


