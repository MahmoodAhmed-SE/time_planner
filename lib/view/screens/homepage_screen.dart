import 'package:flutter/material.dart';
import 'package:time_planner/view/components/activity_adder/activity_adder.dart';



class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {   

    return Scaffold(
      appBar: AppBar(title: const Text("Time planner")),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        constraints: const BoxConstraints(
          minWidth: 400,
          minHeight: 600,
        ),

        child: const ActivityAdder(),
      ),
    );
  }
}
