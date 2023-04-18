import 'package:flutter/material.dart';
import 'package:time_planner/models/activity.dart';
import 'package:time_planner/view/widgets/activity_submission_button.dart';

class ActivitySubmission extends StatelessWidget {
  final VoidCallback addActivity;
  final Activity? activity;
  const ActivitySubmission({super.key, required this.addActivity, this.activity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ActivitySubmissionButton(addActivity: addActivity, activity: activity,),
    );
  }
}