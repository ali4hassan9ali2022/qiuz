import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_card.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_circular_indicator.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomCardQuizView(
          text:
              "In what year did the United States \nhost the FIFA World Cup for the first time?",
        ),
        Positioned(
          right: 0,
          left: 0,
          top: -29,
          child: CustomCircularIndicator(text: "30"),
        ),
      ],
    );
  }
}
