import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(this.switchPage, {super.key});

  final Function() switchPage;

  final image = 'assets/images/quiz-logo.png';

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 300,
            color: const Color.fromARGB(154, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 218, 193, 250), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: switchPage,
              label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}
