import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/button_container.dart';
import '../components/digital_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _topIconsContainer(),
            const DigitalDisplay().pOnly(top: 12, bottom: 12),
            const Spacer(),
            const ButtonsContainer(),
          ],
        ),
      ),
    );
  }

  Widget _topIconsContainer() {
    return Center(
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.light_mode_outlined),
                Icon(Icons.dark_mode_outlined),
              ]),
        ),
      ),
    );
  }
}
