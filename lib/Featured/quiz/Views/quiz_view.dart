import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_app_bar_quiz_view.dart';
import 'package:quiz_app/Featured/quiz/Widgets/quiz_view_body.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});
  static String id = "QuizView";
  @override
  Widget build(BuildContext context) {
    // var name = ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(
      backgroundColor: Color(0xffEFF0F3),
      appBar: CustomAppBarQuizView(),
      body: QuizViewBody(),
    );
  }
}
