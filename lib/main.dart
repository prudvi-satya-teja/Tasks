import 'package:flutter/material.dart';
import 'package:grandtest/task1.dart';
import 'package:grandtest/Day-2/task2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortScreen(),
    );
  }
}
