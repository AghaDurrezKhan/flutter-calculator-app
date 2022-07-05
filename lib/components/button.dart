import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {required this.buttonText,
      this.color = const Color(0xFF333333),
      this.onPressed});

  final String buttonText;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.zero,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: onPressed,
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )),
      ),
    );
  }
}
