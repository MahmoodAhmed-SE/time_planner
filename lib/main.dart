import 'package:flutter/material.dart';
import 'package:time_planner/view/screens/homepage_screen.dart';


void main() => runApp(
  const TimePlannerApp(),
);


class TimePlannerApp extends StatelessWidget  {
  const TimePlannerApp({Key? key}) : super(key: key);
  final String title = "Time Planner";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const HomepageScreen(),
    );    
  }
}