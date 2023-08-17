import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.onTap, required this.text});

  final String text;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 59, 25, 99),
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
