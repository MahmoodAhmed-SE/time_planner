import 'package:flutter/material.dart' show TimeOfDay;

class Activity {
  final String title;
  final String details;
  final TimeOfDay startingTime;
  final TimeOfDay endingTime;

  const Activity({
    required this.title,
    this.details = "No details",
    required this.startingTime,
    required this.endingTime,
  });
}
