import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const InputField({super.key, required this.controller, required this.hintText});
  
  get bgColor => null;

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          // fillColor: bgColor,
          filled: true,
          hintText: hintText,
        )
      ),
    );
  }
}