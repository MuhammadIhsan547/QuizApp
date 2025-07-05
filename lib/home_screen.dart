import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.startQuiz, required this.profile});

  final void Function() startQuiz;
  final void Function() profile;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ), // Image.asset
          ), // Opacity
          const SizedBox(
            height: 30,
          ), // SizedBox
          const Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ), // TextStyle
          ), // Text
          const Text(
            'Praktikum Mobile 6A',
            style: TextStyle(color: Colors.white,
            fontSize:30),
          ), // Text
          const SizedBox(
            height: 30,
          ), // SizedBox
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(width: 30),
                Text('Start Quiz'),
              ],
            ), // Row
          ), // TextButton
          const SizedBox(height: 20),

          TextButton(
            onPressed: profile,
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Profile'),
                SizedBox(width: 35),
                Icon(Icons.people_alt_outlined),
              ],
            ), // Row
          ), // TextButton
        ],
      ), // Column
    ); // Center
  }
}