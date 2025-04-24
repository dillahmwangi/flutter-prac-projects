import 'package:flutter/material.dart';
import 'package:my_prac_project/create_room.dart';
import 'package:my_prac_project/join_room.dart';
import 'package:my_prac_project/menu_tiktak.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        MenuTiktak.routeName: (context) => const MenuTiktak(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom(),
        // Login.routeName: (context) => const Login(),
        // Tweet.routeName: (context) => const Tweet(),
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
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Tweet()),
          );
        },
        child: const Text("Go to Twitter Clone"),
      ),
  
       const SizedBox(height: 16), // space between buttons
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MenuTiktak()),
          );
        },
        child: const Text("Play Tiktaktoe"),
      ),
      const SizedBox(height: 16), // space between buttons
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        },
        child: const Text("Login"),
      ),
    ],
  ),
      ),
    );
  }
}
