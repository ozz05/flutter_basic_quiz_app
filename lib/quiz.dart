import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/gradient_container.dart';
import 'package:flutter_basic_quiz_app/questions_screen.dart';
import 'package:flutter_basic_quiz_app/welcome_screen.dart';

class Quiz extends StatefulWidget
{
  const Quiz ({super.key});
  
  @override
  State<Quiz> createState()
  {
    return _QuizState();
  } 
}

class _QuizState extends State <Quiz>
{
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = WelcomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen ()
  {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
         GradientContainer(
          gradientColors: [Color.fromARGB(255, 14, 149, 167), Color.fromARGB(255, 5, 224, 224)], 
          content: activeScreen
        )
      ),
    );
  }
}