import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Widgets/active_and_inactive_item_quiz_view.dart';

class CustomitemQuizView extends StatelessWidget {
  const CustomitemQuizView({
    super.key,
    required this.isSelected,
    required this.option,
  });
  final bool isSelected;
  final String option;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CustomActiveItemQuizView(option: option)
        : CustomINActiveItemQuizView(option: option);
  }
}
