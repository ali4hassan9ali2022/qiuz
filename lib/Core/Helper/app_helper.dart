import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/quiz/Models/quiz_model.dart';

abstract class AppHelper {
  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color(0xff473F97)),
      borderRadius: BorderRadius.circular(20),
    );
  }

  static List<QuizModel> options = [
    QuizModel(option: "1986"),
    QuizModel(option: "1994"),
    QuizModel(option: "2002"),
    QuizModel(option: "2010"),
  ];
}
