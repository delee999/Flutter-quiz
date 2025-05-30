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
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/background_quiz.png',
              width: 700,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'IQ Test Questions!',
            style: GoogleFonts.firaSansCondensed(
              color: const Color(0xfff5efff),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 70),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(200, 60, 188, 77),
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_outward),
          )
        ],
      ),
    );
  }
}
