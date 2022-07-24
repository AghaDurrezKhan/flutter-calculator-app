import 'package:flutter/material.dart';
import 'package:my_calculator/utils/theme_provider.dart';
import 'package:my_calculator/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      child: MyCalculator(),
      create: (BuildContext context) => ThemeProvider(isDarkMode: true)));
}

class MyCalculator extends StatelessWidget {
  MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProvider, child) {
        return MaterialApp(
          title: 'Calculator',
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.getTheme,
          home: const HomePage(),
        );
      },
    );
  }
}
