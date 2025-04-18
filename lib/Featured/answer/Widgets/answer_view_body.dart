import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_info_student.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_question_number.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_true_answer_item.dart';

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomQuestionNumber(),
              SizedBox(width: 10),
              CustomTrueAnsweritem(),
            ],
          ),
        ],
      ),
    );
  }
}
