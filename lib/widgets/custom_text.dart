import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final double fontSize;
  final String text;
  const CustomText({super.key, required this.shadows, required this.fontSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        shadows: shadows,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
