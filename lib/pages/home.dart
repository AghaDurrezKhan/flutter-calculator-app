import 'package:flutter/material.dart';
import 'package:my_calculator/components/theme_switch.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/button_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: const [
            HeightBox(10),
            ThemeSwitch(),
            Spacer(),
            DisplayWithButtonsContainer(),
          ],
        ),
      ),
    );
  }
}
