import 'package:flutter/material.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});
  static String id = "QuizView";
  @override
  Widget build(BuildContext context) {
    var name = ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(appBar: AppBar(title: Text(name.toString())));
  }
}
