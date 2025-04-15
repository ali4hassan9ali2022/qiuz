import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Stack(
            children: [
              CircularPercentIndicator(
                radius: 43,
                percent: 1.0,
                backgroundColor: Color(0xffB9B6D7),
                animation: true,
                animationDuration: 60000,
                progressColor: Color(0xff473F97),
                center: Text("30", style: AppStyles.styleSemiBold32(context)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
