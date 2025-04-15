import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 43,
      child: CircularPercentIndicator(
        circularStrokeCap: CircularStrokeCap.round,
        radius: 43,
        restartAnimation: true,
        percent: 1.0,
        backgroundColor: Color(0xffB9B6D7),
        animation: true,
        animationDuration: 60000,
        progressColor: Color(0xff473F97),
        center: Text(text, style: AppStyles.styleSemiBold32(context)),
      ),
    );
  }
}
