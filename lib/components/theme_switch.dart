import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleSwitch(
        minHeight: 44,
        minWidth: 60,
        totalSwitches: 2,
        inactiveFgColor: Colors.grey,
        activeFgColor: Colors.white,
        inactiveBgColor: const Color.fromARGB(255, 35, 37, 46),
        activeBgColor: const [Color.fromARGB(255, 35, 37, 46)],
        cornerRadius: 32,
        icons: const [Icons.light_mode_outlined, Icons.dark_mode_outlined],
        iconSize: 20,
      ),
    );
  }
}
