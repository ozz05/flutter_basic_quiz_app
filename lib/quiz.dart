import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/gradient_container.dart';
import 'package:flutter_basic_quiz_app/questions_screen.dart';
import 'package:flutter_basic_quiz_app/results_screen.dart';
import 'package:flutter_basic_quiz_app/welcome_screen.dart';
import 'package:flutter_basic_quiz_app/data/questions.dart';

const String startScreen = "welcome-screen";
const String questionScreen = "question-screen";
const String resultsScreen = "results-screen";
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
  //Using Widgets to update the screen
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = WelcomeScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen ()
  // {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  var activeScreen = startScreen;
  final List<String> selectedAnswers = [];

  void switchScreen ()
  {
    setState(() {
      activeScreen = questionScreen;
    });
  }

  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length)
    {
      setState(() {
        activeScreen = resultsScreen;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    if (activeScreen == startScreen)
    {
      screenWidget = WelcomeScreen(switchScreen);
    }
    else if (activeScreen == questionScreen)
    {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    else
    {
      screenWidget = ResultsScreen(selectedAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body:
         GradientContainer(
          gradientColors: [Color.fromARGB(255, 14, 149, 167), Color.fromARGB(255, 5, 224, 224)], 
          content: screenWidget,
        )
      ),
    );
  }
}