import 'package:flutter/material.dart';
import 'package:my_calculator/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ThemeSwitch> {
  int indexLabel = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleSwitch(
        minHeight: 44,
        minWidth: 60,
        totalSwitches: 2,
        changeOnTap: true,
        inactiveFgColor: Colors.grey,
        activeFgColor: Colors.white,
        inactiveBgColor: Theme.of(context).colorScheme.background,
        activeBgColor: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.primary,
        ],
        cornerRadius: 32,
        icons: const [Icons.light_mode_outlined, Icons.dark_mode_outlined],
        iconSize: 20,
        initialLabelIndex: indexLabel,
        onToggle: ((index) {
          ThemeProvider themeProvider =
              Provider.of<ThemeProvider>(context, listen: false);
          indexLabel = 1 - indexLabel;
          index = indexLabel;
          themeProvider.swapTheme();
        }),
      ),
    );
  }
}
