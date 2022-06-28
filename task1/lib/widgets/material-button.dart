import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double height;
  final double width;
  final double radius;
  final VoidCallback onPressed;
  const CustomButton(
      {Key? key,
      required this.text,
      this.buttonColor = Colors.black,
      this.textColor = Colors.black,
      this.height = 40,
      this.width = 70,
      required this.onPressed,
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: buttonColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
