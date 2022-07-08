import 'package:flutter/material.dart';
import 'package:my_calculator/pages/home.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: _darkTheme,
      home: const HomePage(),
    );
  }

  final ThemeData _lightTheme = ThemeData(
    primaryColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFFEA00C),
      onPrimary: Colors.white,
      secondary: Color(0xFF50C878),
      onSecondary: Colors.white,
      error: Color(0xFFDC4F42),
      onError: Colors.white,
      background: Color(0xFF1C1E25),
      onBackground: Colors.white,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
  );

  final ThemeData _darkTheme = ThemeData(
    primaryColor: const Color(0xFF1C1E25),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFEA00C),
      onPrimary: Color(0xFF1C1E25),
      secondary: Color(0xFF50C878),
      onSecondary: Color(0xFF1C1E25),
      error: Color(0xFFDC4F42),
      onError: Color(0xFF1C1E25),
      background: Color(0xFF23252E),
      onBackground: Color(0xFF1C1E25),
      surface: Color(0xFF1C1E25),
      onSurface: Color(0xFF1C1E25),
    ),
  );
}
