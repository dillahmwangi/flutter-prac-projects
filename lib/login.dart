import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static var routeName;

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        ));
  }
}