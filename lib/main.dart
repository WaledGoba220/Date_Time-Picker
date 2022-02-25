import 'package:flutter/material.dart';
import 'package:flutter_date_time_picker/screen/date.dart';
import 'package:flutter_date_time_picker/screen/date_time.dart';
import 'package:flutter_date_time_picker/screen/time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Date & Time Picker',
      home: DateScreen(),
    );
  }
}
