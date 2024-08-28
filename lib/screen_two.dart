import 'package:flutter/material.dart';
import 'package:navigation_in_flutter/home_screen.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen 2')),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Haha-haha!')),
          TextButton(
              onPressed: () {
                //Below is router code code
                Navigator.pop(context, HomeScreen.id);
                //Below is navigator code
                //Navigator.pop(context);
              },
              child: const Text("Butt-ON"))
        ],
      ),
    );
  }
}
