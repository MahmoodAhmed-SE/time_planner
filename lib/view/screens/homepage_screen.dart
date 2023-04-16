import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleTextController = TextEditingController();
    final TextEditingController detailsTextController = TextEditingController();

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

        child: Column(
          children: [
            SizedBox(
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
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  const Text("Activity starts: "),
                  IconButton(onPressed: () async {
                    Future<TimeOfDay?> startTimeframePicker =  showTimePicker(context: context, initialTime: TimeOfDay.now());
                    TimeOfDay? startTimeframe = await startTimeframePicker;
                  }, icon: const Icon(Icons.access_time_rounded)),
                  const Text("Activity ends at: "),
                  IconButton(onPressed: () async {
                    Future<TimeOfDay?> endTimeframePicker =  showTimePicker(context: context, initialTime: TimeOfDay.now());
                    TimeOfDay? endTimeframe = await endTimeframePicker;
                  }, icon: const Icon(Icons.access_time_rounded)),
                ],
              ),
            ),
            Container(
              height: 300,
              padding: const EdgeInsets.all(10),
              child: TextField(controller: detailsTextController),
            )
          ],
        ),
      ),
    );
  }
}
