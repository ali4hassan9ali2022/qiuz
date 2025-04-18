import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomQuestionNumberTrue extends StatelessWidget {
  const CustomQuestionNumberTrue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 58,
      height: 35,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
        ],
        color: Color(0xff35A906),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(17.5),
        ),
      ),
      child: Text(
        "1",
        style: AppStyles.styleRegular21(context).copyWith(color: Colors.white),
      ),
    );
  }
}
class CustomQuestionNumberFalse extends StatelessWidget {
  const CustomQuestionNumberFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        "1",
        style: AppStyles.styleRegular21(context).copyWith(color: Colors.white),
      ),
    );
  }
}
