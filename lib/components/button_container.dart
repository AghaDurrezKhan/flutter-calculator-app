import 'package:flutter/material.dart';

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        // color: Color(0xFFAAAAAA),
        color: Colors.grey.shade600,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: const []),
      ),
    ));
  }
}
