import 'package:flutter/material.dart';

class ActivityTimeFrame extends StatefulWidget {
  final addTimeframes;
  const ActivityTimeFrame({super.key, required this.addTimeframes});

  @override
  State<ActivityTimeFrame> createState() => _ActivityTimeFrameState();
}

class _ActivityTimeFrameState extends State<ActivityTimeFrame> {
  TimeOfDay? startTimeframe;
  TimeOfDay? endTimeframe;


  @override
  Widget build(BuildContext context) {

    void inputTimeframes () {
      // TODO: validate input..
      widget.addTimeframes(
        startTimeframe!,
        endTimeframe!,
      );
    }

    return SizedBox(
      width: 300,
      child: Row(
        children: [
          const Text("Activity starts: "),
          IconButton(
              onPressed: () async {
                Future<TimeOfDay?> startTimeframePicker = showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                startTimeframe = await startTimeframePicker;
              },
              icon: const Icon(Icons.access_time_rounded)),
          const Text("Activity ends at: "),
          IconButton(
              onPressed: () async {
                Future<TimeOfDay?> endTimeframePicker = showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                endTimeframe = await endTimeframePicker;
              },
              icon: const Icon(Icons.access_time_rounded)),
        ],
      ),
    );
  }
}
