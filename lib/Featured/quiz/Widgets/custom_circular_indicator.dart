

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomCircularIndicator extends StatefulWidget {
  const CustomCircularIndicator({
    super.key,
    required this.duration,
    required this.onComplete,
  });

  final int duration;
  final VoidCallback onComplete;

  @override
  State<CustomCircularIndicator> createState() =>
      _CustomCircularIndicatorState();
}

class _CustomCircularIndicatorState extends State<CustomCircularIndicator>
    with SingleTickerProviderStateMixin {
      late AnimationController controller;
      @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: widget.duration))..forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
widget.onComplete();
      }
    },);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // var cubit = BlocProvider.of<AppCubit>(context);
    return CircleAvatar(
          backgroundColor: Colors.white,
          radius: 43,
          child: AnimatedBuilder(animation: controller, builder: (context, child) {
          return  CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            radius: 43,

            percent: controller.value,
            lineWidth: 6,
            
            backgroundColor: Color(0xffB9B6D7),
            animation: false,
            progressColor: Color(0xff473F97),
            center: Text(
              "${widget.duration * (1 - controller.value).round()} s",
              style: AppStyles.styleSemiBold32(context),
            ),
          );
          },)
        );
  }
}
