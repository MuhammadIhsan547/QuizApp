import 'package:flutter/material.dart';
import 'package:quiz_app/datas/questions.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/profile.dart';
import 'package:quiz_app/questions_screen.dart'; // Hanya perlu satu
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Gunakan List untuk menyimpan screen widget, agar lebih rapi
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  void profileScreen() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'profile-screen';
    });
  }

  void goToHomeScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }


  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(
      startQuiz: switchScreen,
      profile: profileScreen,
    );

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswer,
        onRestart: restartQuiz, // Kirim fungsi restart ke result screen
      );
    }

    if (activeScreen == 'profile-screen') {
      screenWidget =  Profile (onGoHome: goToHomeScreen);
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}