import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomInActiveCardAnswer extends StatelessWidget {
  const CustomInActiveCardAnswer({super.key, required this.selectedNumberIndex, required this.selectedAnswerIndex, required this.userAnswerIndex});
  final int selectedNumberIndex;
  final int selectedAnswerIndex;
  final int userAnswerIndex;
  @override
  Widget build(BuildContext context) {
    final quiz = AppHelper.options[selectedAnswerIndex];
    final correctIndex = quiz.correctAnswer;
    final userAnswer = quiz.option[userAnswerIndex];
    final correctAnswer = quiz.option[correctIndex];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 58,
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
            ],
            color: Color(0xffF83E53),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(17.5),
            ),
          ),
          child: Text(
            selectedNumberIndex.toString(),
            style: AppStyles.styleRegular21(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            // padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: -10,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xffF83E53),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                  child: Text(
                    textAlign: TextAlign.center,
                    quiz.question,
                    style: AppStyles.styleSemiBold18(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(height: 6),
                Divider(color: Colors.white, thickness: 0),
                SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, bottom: 4),
                  child: CustomButton(
                    borderRadius: 20,
                    color: Color(0xffFFFFFF),
                    width: double.infinity,
                    height: 41,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            CupertinoIcons.checkmark_alt_circle_fill,
                            color: Color(0xff524B9E),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            correctAnswer,
                            style: AppStyles.styleSemiBold20(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, bottom: 14),
                  child: CustomButton(
                    borderRadius: 20,
                    color: Color(0xffFFFFFF),
                    width: double.infinity,
                    height: 41,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            CupertinoIcons.xmark_circle_fill,
                            color: Color(0xff524B9E),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                           userAnswer ,
                            style: AppStyles.styleSemiBold20(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
