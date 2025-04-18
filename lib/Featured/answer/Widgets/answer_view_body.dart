import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_info_student.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_question_number.dart';

class AnswerViewBody extends StatelessWidget {
  const AnswerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 39),
      child: Column(
        children: [
          CustomInfoStudent(),
          SizedBox(height: 23),
          Row(
            children: [
              CustomQuestionNumber(),
              // Container(
              //   height: 220,
              //   width: double.infinity,
              //   decoration: BoxDecoration(color: Color(0xff35A906)),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

