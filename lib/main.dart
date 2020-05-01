import 'package:flutter/material.dart';
import 'package:yoega/pages/login.dart';
import 'package:yoega/pages/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOEGA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.cyan,

      ),
      home: LoginPage(),
    );
  }
}
