import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {required this.buttonText,
      this.buttonColor = const Color.fromARGB(255, 31, 33, 41),
      this.textColor = const Color(0xFFFFFFFF),
      this.onPressed});

  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.zero,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: onPressed,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(color: textColor, fontSize: 24),
        )),
      ),
    );
  }
}
