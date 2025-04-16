import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key, required this.duration, required this.onComplete,
  });
 
  final int duration;
  final VoidCallback onComplete;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: duration),
      tween: Tween(begin: 1.0, end: 0.0),
      onEnd: onComplete,
      builder: (context, value, child) {
        int secondLeft = (value * duration).ceil();
        return  CircleAvatar(
        backgroundColor: Colors.white,
        radius: 43,
        child: CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.round,
          radius: 43,
      
          percent: value.clamp(0.0, 1.0),
          backgroundColor: Color(0xffB9B6D7),
          animation: false,
          progressColor: Color(0xff473F97),
          center: Text("$secondLeft s", style: AppStyles.styleSemiBold32(context)),
        ),
      );
      },
    );
  }
}
