import 'package:flutter/material.dart';
import 'package:my_calculator/providers/theme_provider.dart';
import 'package:my_calculator/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: MyCalculator(),
      create: (BuildContext context) => ThemeProvider(isDarkMode: false),
    ),
  );
}

class MyCalculator extends StatelessWidget {
  MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Calculator',
          debugShowCheckedModeBanner: false,
          theme: themeProvider.getTheme,
          home: const HomePage(),
        );
      },
    );
  }
}
