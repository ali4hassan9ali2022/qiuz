import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_circular_indicator.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Stack(
            children: [
              CustomCircularIndicator(),
            ],
          ),
        ],
      ),
    );
  }
}

