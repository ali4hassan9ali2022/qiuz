import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_crade.dart';

class AnswerViewBody extends StatelessWidget {
  const AnswerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 39),
      child: Column(
        children: [
          CustomGrade(),
        ],
      ),
    );
  }
}

