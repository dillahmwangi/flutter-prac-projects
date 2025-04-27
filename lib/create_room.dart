import 'package:flutter/material.dart';
import 'package:my_prac_project/widgets/custom_input-field.dart';
import 'package:my_prac_project/widgets/custom_text.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/createRoom';
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(0, 0),
                  blurRadius: 20,
                ),
              ], fontSize: 60, 
              text: 'Create Room'),
              const SizedBox(
                height: 20,
              ),
              InputField(controller: nameController, hintText:'Enter Room Name'),
            ],
          )),
    );
  }
}
