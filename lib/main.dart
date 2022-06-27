import 'package:flutter/material.dart';
import 'package:my_calculator/pages/home.dart';

void main() {
  runApp(const MyCalculator());
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
