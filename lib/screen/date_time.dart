import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime = DateTime(2022, 02, 25, 12, 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Date & Time'),
        backgroundColor: Colors.blue.shade900,
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.date_range_rounded),
          Icon(Icons.timer_rounded),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${dateTime.day}/ ${dateTime.month}/ ${dateTime.year} - ${dateTime.hour} : ${dateTime.minute} ',
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Select Date & Time'),
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: dateTime,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (newDate == null) return;

                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime:
                      TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
                );
                if (newTime == null) return;

                final newDateTime = DateTime(
                  newDate.year,
                  newDate.month,
                  newDate.day,
                  newDate.hour,
                  newDate.minute,
                );

                setState(() {
                  dateTime = newDateTime;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
