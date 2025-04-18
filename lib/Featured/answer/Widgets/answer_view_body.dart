import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_active_and_inactiveCardAnswer.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_info_student.dart';

class AnswerViewBody extends StatelessWidget {
  const AnswerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 39),
          CustomInfoStudent(),
          SizedBox(height: 23),
          CustomInActiveCardAnswer(),
        ],
      ),
    );
  }
}
