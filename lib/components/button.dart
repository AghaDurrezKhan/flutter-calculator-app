import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      this.width = 75,
      this.height = 75,
      this.onPressed});

  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
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
          ),
        ),
      ),
    );
  }
}
