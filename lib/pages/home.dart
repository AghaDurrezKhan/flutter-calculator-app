import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _topIconsContainer(),
            const Spacer(),
            const DisplayWithButtonsContainer(),
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
