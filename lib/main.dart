import 'package:flutter/material.dart';
import 'package:my_prac_project/create_room.dart';
import 'package:my_prac_project/join_room.dart';
import 'package:my_prac_project/menu_tiktak.dart';
import 'package:my_prac_project/widgets/button.dart';
import 'login.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 103, 184)),
        useMaterial3: true,
      ),
      routes: {
        MenuTiktak.routeName: (context) => const MenuTiktak(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom(),
        // Login.routeName: (context) => const Login(),
        Tweet.routeName: (context) => const Tweet(),
      },
      // initialRoute: '/',  
      // Set the initial route to the home page
    
      home: const MyHomePage(title: 'MY PAGES'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
         child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Button(onTap: () => tweet(context), text: 'Go To Twitter Clone'),
       const SizedBox(height: 16), // space between buttons
     Button(onTap: () => menuTiktak(context), text: "Play Tiktaktoe"),
      const SizedBox(height: 16), // space between buttons
     Button(onTap: () => login (context), text: "Login"),
    ],
  ),
      ),
    );
  }
  
  tweet(BuildContext context) {}
  
  login(BuildContext context) {}
  
  menuTiktak(BuildContext context) {}

}
