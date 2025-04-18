import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/answer/Widgets/answer_view_body.dart';

class AnswerView extends StatelessWidget {
  const AnswerView({super.key});
  static String id = "AnswerView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff473F97), body: AnswerViewBody());
  }
}
