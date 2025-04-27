import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static String routeName = '/login';
  const Login(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        ));
  }
}