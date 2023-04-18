import 'package:flutter/material.dart';

class ActivityDetails extends StatelessWidget {
  final addDetails;
  const ActivityDetails({super.key, required this.addDetails});

  @override
  Widget build(BuildContext context) {
    final TextEditingController detailsTextController = TextEditingController();
    
    void addInputDetails() {
      // TODO: validate input..
      addDetails(detailsTextController.text);
    }

    return Container(
      height: 300,
      padding: const EdgeInsets.all(10),
      child: TextField(controller: detailsTextController),
    );
  }
}
