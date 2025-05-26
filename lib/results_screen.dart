import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget
{
  ResultsScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;
  final int correctAnswers = 0;
  final int totalAnswers = questions.length;

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        children: [
          Text(
            "You got $correctAnswers out of $totalAnswers questions correctly!",
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}