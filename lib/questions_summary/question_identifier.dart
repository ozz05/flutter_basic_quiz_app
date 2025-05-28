import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget 
{
  const QuestionIdentifier ({super.key, required this.questionIndex, required this.isCorrectAnswer });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer 
          ? const Color.fromARGB(255, 9, 89, 180)
          : const Color.fromARGB(255, 255, 4, 234),
        borderRadius: BorderRadius.circular(100) 
      ),
      child: Text(
        questionIndex.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }
}