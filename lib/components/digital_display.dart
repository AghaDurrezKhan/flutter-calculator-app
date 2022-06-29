import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DigitalDisplay extends StatelessWidget {
  const DigitalDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: ['123x345'.text.make()]),
    );
  }
}
