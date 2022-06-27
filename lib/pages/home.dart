import 'package:flutter/material.dart';
import 'package:my_calculator/components/button_container.dart';
import 'package:my_calculator/components/digital_display.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            _topIconsContainer(),
            const SizedBox(
              height: 24,
            ),
            const DigitalDisplay(),
            const ButtonsContainer()
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
