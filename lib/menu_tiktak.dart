import 'package:flutter/material.dart';
import 'package:my_prac_project/responsive/responsive.dart';
import 'package:my_prac_project/widgets/button.dart';

class MenuTiktak extends StatelessWidget {
  static String routeName = '/menuTiktak';
  const MenuTiktak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Responsive(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(onTap: () {}, text: "Create Room"),
              const SizedBox(height: 5),
              Button(onTap: () {}, text: "Join Room"),
            //   Button(onTap: () {}, text: "Play with AI"),
            //   const SizedBox(height: 20),
            //   Button(onTap: () {}, text: "Play with Friend"),
            ]),
      ),
    );
  }
}
