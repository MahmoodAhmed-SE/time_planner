import 'package:flutter/material.dart';
import 'package:time_planner/models/activity.dart';

class ActivitySubmissionButton extends StatelessWidget {
  final addActivity;
  final Activity? activity;
  const ActivitySubmissionButton({super.key, required this.addActivity, this.activity});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: validate input..
        if (activity != null) {
          addActivity(activity!);
        }
      },
      child: const Text("Add"),
    );
  }
}
