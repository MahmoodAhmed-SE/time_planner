import 'package:flutter/material.dart';

class ActivityTitle extends StatelessWidget {
  final addTitle;
  const ActivityTitle({super.key, required this.addTitle});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleTextController = TextEditingController();

    void addInputTitle() {
      // TODO: validate input..
      addTitle(titleTextController.text);
    }

    return SizedBox(
      width: 300,
      child: Row(
        children: [
          const Text("Activity title: "),
          Expanded(
            child: TextField(
              controller: titleTextController,
            ),
          ),
        ],
      ),
    );
  }
}
