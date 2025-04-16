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
    QuizModel(option: "1986", isActiv: false),
    QuizModel(option: "1994", isActiv: false),
    QuizModel(option: "2002", isActiv: false),
    QuizModel(option: "2010", isActiv: false),
  ];
}
