import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_active_card_answer.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_inactive_card_amswer.dart';
import 'package:quiz_app/Featured/answer/Widgets/custom_info_student.dart';

class AnswerViewBody extends StatelessWidget {
  const AnswerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // int correctAnswer = 0;
    Map<String, dynamic> info =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // var cubit = BlocProvider.of<AppCubit>(context);
    List<int> selctedAnswers = info["Answers"];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 39),
          CustomInfoStudent(
            name: info["Name"],
            correctAnser: calculateCorrextAnser(context),
            totalQuestions: selctedAnswers.length,
          ),
          SizedBox(height: 23),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final quiz = AppHelper.options[index];
                final userInswerIndex = selctedAnswers[index];
                final correctInswerIndex = quiz.correctAnswer;
                final isCorrect = userInswerIndex == correctInswerIndex;
                return isCorrect
                    ? CustomActiveCardAnswer(
                      selectedAnswerIndex: index,
                      selectedNumberIndex: index + 1,
                      userAnswerIndex: userInswerIndex,
                    )
                    : CustomInActiveCardAnswer(
                      selectedNumberIndex: index + 1,
                      selectedAnswerIndex: index ,
                      userAnswerIndex: userInswerIndex,
                    );
              },
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: selctedAnswers.length,
            ),
          ),
        ],
      ),
    );
    
  }

  int calculateCorrextAnser(context) {
    Map<String, dynamic> info =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    List<int> selctedAnswers = info["Answers"];
    int corrext = 0;
    for(int i = 0; i <selctedAnswers.length; i++) {
      final quiz = AppHelper.options[i];
      if (selctedAnswers[i] == quiz.correctAnswer) {
        corrext ++;
      }
    }
    return corrext;
  }
}
