import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:life_follow_flutter_app/screens/home_screen.dart';
import 'package:life_follow_flutter_app/screens/plan_screen.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.indigo,
        index: 0,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.bar_chart,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.date_range,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0
          ? HomePage()
          : newindex == 2
              ? PlanPage()
              : HomePage(),
    );
  }
}
