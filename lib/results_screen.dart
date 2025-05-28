import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_basic_quiz_app/questions_summary/questions_summary.dart";

class ResultsScreen extends StatelessWidget
{
  ResultsScreen({super.key, required this.selectedAnswers, required this.restartQuiz});
  final List<String> selectedAnswers;
  final int totalAnswers = questions.length;

  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData()
  {
    final List<Map<String, Object>> summary = [];
    for(int i = 0; i < selectedAnswers.length; i ++)
    {
      summary.add(
        {
          "question-index": i,
          "question": questions[i].text,
          "correct-answer": questions[i].answers[0],
          "user-answer" : selectedAnswers[i]
        }
      );
    }
    return summary;
  }


  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int correctAnswer = summaryData.where((data) {
      return data["user-answer"] == data["correct-answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You got $correctAnswer out of $totalAnswers questions correctly!",
              style: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.white,

              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            QuestionsSummary(
              summaryData: summaryData
            ),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: Icon(Icons.restart_alt_outlined), 
              label: Text("Restart Quiz")
            )
          ],
        ),
      ),
    );
  }
}