import 'package:flutter/material.dart';
import "package:flutter_basic_quiz_app/answer_button.dart";
import 'package:flutter_basic_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var currentIndex = 0;
  void answerQuiestion()
  {
    if (currentIndex < questions.length - 1)
    {
      setState(() {
          currentIndex ++;
      });
    }
    else{

    }
  }
  @override
  Widget build(BuildContext context) {
    
    final currentQuestion = questions[currentIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer, 
                onTap: answerQuiestion
              );
            }),
          ],
        ),
      )
    );
  }
}