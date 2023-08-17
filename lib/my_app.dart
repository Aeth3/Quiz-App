import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/results_page.dart';

import 'welcome_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Widget? activePage;

  // @override
  // void initState() {
  //   super.initState();
  //   activePage = WelcomePage(switchPage);
  // }
  var activePage = 'start-screen';
  List<String> selectedAnswers = [];

  void switchPage() {
    setState(() {
      activePage = 'quiz-page';
      selectedAnswers.clear();
    });
  }

  void chosenAnswer(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'results-page';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = WelcomePage(switchPage);

    if (activePage == 'quiz-page') {
      screenWidget = QuizPage(onChosenAnswer: chosenAnswer);
    } else if (activePage == 'results-page') {
      screenWidget = ResultsPage(switchPage, chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 120, 19, 215),
              Color.fromARGB(255, 66, 14, 91),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
