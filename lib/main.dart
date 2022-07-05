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
      theme: ThemeData(
        primaryColor: const Color(0xFF333333),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          secondary: Color(0xFFfea00c),
          primary: Color(0xFFEF5DA8),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          error: Color(0xFFDC4F42),
          onError: Colors.white,
          background: Color(0xFF1A1D21),
          onBackground: Colors.white,
          surface: Color(0xFFa5a5a5),
          onSurface: Color(0xFF070707),
        ),
      ),
      home: const HomePage(),
    );
  }
}
