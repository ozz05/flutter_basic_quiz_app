import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget 
{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return  _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State <QuestionsScreen>
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png", 
            width: 300,
            color: Color.fromARGB(149, 255, 255, 255)
          ),
          const SizedBox(height: 50,),
          Text(
            "Questions Screen!",
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white
            ),
          ),
        ],
      )
    );
  }
}