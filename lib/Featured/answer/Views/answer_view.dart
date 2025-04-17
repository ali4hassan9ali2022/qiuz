import 'package:flutter/material.dart';

class AnswerView extends StatelessWidget {
  const AnswerView({super.key});
static String id = "AnswerView";
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> info = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("$info"),
      ),
    );
  }
}