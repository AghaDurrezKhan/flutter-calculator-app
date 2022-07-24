import 'package:flutter/material.dart';
import 'package:my_calculator/utils/theme_provider.dart';
import 'package:provider/provider.dart';
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
        inactiveBgColor: Theme.of(context).colorScheme.background,
        activeBgColor: [Theme.of(context).colorScheme.background],
        cornerRadius: 32,
        icons: const [Icons.light_mode_outlined, Icons.dark_mode_outlined],
        iconSize: 20,
        onToggle: ((index) {
          ThemeProvider themeProvider =
              Provider.of<ThemeProvider>(context, listen: false);
          themeProvider.swapTheme();
        }),
      ),
    );
  }
}
