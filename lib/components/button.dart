import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {required this.buttonText, this.color = Colors.teal, this.onPressed});
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
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: onPressed,
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
    );
  }
}
