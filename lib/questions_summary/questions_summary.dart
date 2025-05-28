import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/questions_summary/question_identifier.dart';
import 'package:flutter_basic_quiz_app/questions_summary/question_breakdown.dart';

class QuestionsSummary extends StatelessWidget
{
  const QuestionsSummary({super.key,  required this.summaryData});
  final  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child:SingleChildScrollView(
        child: Column(
          children: summaryData.map((data)
          {
            var isCorrectAnswer = data["user-answer"] == data["correct-answer"];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    questionIndex: (data["question-index"] as int) + 1, 
                    isCorrectAnswer:  isCorrectAnswer
                  ),
                  SizedBox(width: 30,),
                  QuestionBreakdown(
                    question: data["question"] as String, 
                    correctAnswer: data["correct-answer"] as String, 
                    userAnswer: data["user-answer"] as String,
                    isCorrectAnswer:  isCorrectAnswer
                  )
                ],
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}