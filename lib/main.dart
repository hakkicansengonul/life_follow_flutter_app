import 'package:flutter/material.dart';
import 'package:life_follow_flutter_app/Homedata/plandata.dart';
import 'package:life_follow_flutter_app/screens/Home.dart';
import 'package:life_follow_flutter_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeHome(),
    );
  }
}
