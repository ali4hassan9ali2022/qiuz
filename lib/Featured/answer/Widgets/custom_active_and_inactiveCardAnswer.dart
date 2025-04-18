import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_false_answer_itme.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_question_number.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_true_answer_item.dart';

class CustomActiveCardAnswer extends StatelessWidget {
  const CustomActiveCardAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomQuestionNumberTrue(),
        SizedBox(width: 10),
        CustomTrueAnsweritem(),
      ],
    );
  }
}

class CustomInActiveCardAnswer extends StatelessWidget {
  const CustomInActiveCardAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomQuestionNumberFalse(),
        SizedBox(width: 10),
        CustomFalseAnswerItme(),
      ],
    );
  }
}
