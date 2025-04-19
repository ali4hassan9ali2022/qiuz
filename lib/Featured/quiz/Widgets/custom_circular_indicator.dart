



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';

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
      late int remainingTime;
      Timer? timer;
      @override
  void initState() {
    // TODO: implement initState
    super.initState();
    remainingTime = widget.duration;
    controller = AnimationController(vsync: this, duration: Duration(seconds: widget.duration))..forward();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(mounted) {
        setState(() {
          remainingTime--;
        });

        if(remainingTime == 0) {
          timer.cancel();
        }
      }
    },);
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (context.mounted) {
          final cubic = BlocProvider.of<AppCubit>(context);
          if(cubic.isSelected == -1) {
            cubic.selectedAnswers.add(-1);
            cubic.goToNextQuestion();
          }
          widget.onComplete;
         }
      }
    },);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    timer?.cancel();
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
              "$remainingTime s",
              style: AppStyles.styleSemiBold32(context),
            ),
          );
          },)
        );
  }
}
