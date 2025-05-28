import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionBreakdown extends StatelessWidget
{
  const QuestionBreakdown({super.key, required this.question, required this.correctAnswer, required this.userAnswer, required this.isCorrectAnswer});

  final String question;
  final String correctAnswer;
  final String userAnswer;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            style: GoogleFonts.lato(
              
              fontSize: 20,
              color: Colors.white
            ),
            textAlign: TextAlign.left,
            question
          ),
          SizedBox(height: 5,),
          Text(
            style: GoogleFonts.lato(
              fontSize: 15,
              color: const Color.fromARGB(255, 9, 89, 180)
            ),
            textAlign: TextAlign.left,
            correctAnswer
          ),
          Text(
            style: GoogleFonts.lato(
              fontSize: 15,
              color: isCorrectAnswer 
                ? const Color.fromARGB(255, 152, 229, 240)
                : const Color.fromARGB(255, 177, 85, 169), 
            ),
            textAlign: TextAlign.left,
            userAnswer
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}