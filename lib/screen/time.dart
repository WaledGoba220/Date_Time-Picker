import 'package:flutter/material.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  TimeOfDay time =  TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Screen'),
        backgroundColor: Colors.blue.shade900,
        leading: const Icon(Icons.access_time),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${time.hour} : ${time.minute} ',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Select a Time'),
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                );
                if(newTime == null)return;
                setState(() {
                  time = newTime;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
