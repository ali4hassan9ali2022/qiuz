import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Models/quiz_model.dart';
import 'package:quiz_app/Featured/quiz/Widgets/active_and_inactive_item_quiz_view.dart';

class CustomitemQuizView extends StatelessWidget {
  const CustomitemQuizView({
    super.key,
    required this.isSelected,
    required this.quizModel,
  });
  final bool isSelected;
  final QuizModel quizModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CustomActiveItemQuizView(quizModel: quizModel)
        : CustomINActiveItemQuizView(quizModel: quizModel);
  }
}
