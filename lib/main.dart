import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/quiz.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
