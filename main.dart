import 'package:flutter/material.dart';
import 'package:flutter_app_test/LandingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:Colors.black,
        accentColor: Colors.white,
      ),
      title: 'Flutter Demo',
      home: LandingPage(),
    );
  }
}


