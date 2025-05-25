import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget
{
  const GradientContainer({super.key, required this.gradientColors, required this.content});
  final List<Color> gradientColors;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child:
        content
    );
  }
}