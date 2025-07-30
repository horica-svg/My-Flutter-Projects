import 'package:flutter/material.dart';
import 'package:simple_test_app/start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
  @override
  State<Quiz> createState() {
    return _QiuzState();
  }
}

class _QiuzState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Color.fromARGB(255, 54, 23, 106), 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}