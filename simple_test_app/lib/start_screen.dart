import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(134, 202, 146, 234),
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 233, 255, 233),
              fontSize: 24,
            )
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
