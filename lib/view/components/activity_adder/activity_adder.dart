import 'package:flutter/material.dart';
import 'package:time_planner/models/activity.dart';

import 'package:time_planner/view/components/activity_adder/activity_details.dart';
import 'package:time_planner/view/components/activity_adder/activity_submission.dart';
import 'package:time_planner/view/components/activity_adder/activity_timeframe.dart';
import 'package:time_planner/view/components/activity_adder/activity_title.dart';

class ActivityAdder extends StatefulWidget {
  const ActivityAdder({super.key});

  @override
  State<ActivityAdder> createState() => _ActivityAdderState();
}

class _ActivityAdderState extends State<ActivityAdder> {
  final List<Activity> activities = [];

  String? title;
  String? details;
  TimeOfDay? startingTime;
  TimeOfDay? endingTime;

  Activity? activity;
  
  void addTitle(String inputTitle) {
    title = inputTitle;
  }
  void addDetails(String inputDetails) {
    details = inputDetails;
  }
  void addTimeframes(TimeOfDay inputStartingTime, TimeOfDay inputEndingTime) {
    startingTime = inputStartingTime;
    endingTime = inputEndingTime;
  }

  void addActivity() {
    //TODO: validate null-able vars..
    activity = Activity(title: title!, details: details!, startingTime: startingTime!, endingTime: endingTime!);
    activities.add(activity!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Text("${activities.isNotEmpty ? activities[0].endingTime : ""}"),
        ActivityTitle(addTitle: addTitle),
        ActivityTimeFrame(addTimeframes: addTimeframes),
        ActivityDetails(addDetails: addDetails),
        ActivitySubmission(addActivity: addActivity, activity: activity,),
      ],
    );
  }
}
