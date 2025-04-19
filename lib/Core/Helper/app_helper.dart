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
    QuizModel(
      option: ["اسكندرية", "المنيا", "القاهرة", "أسوان"],
      question: "ما هى عاصمة مصر",
      correctAnswer: 2,
    ),
    QuizModel(
      option: ["الزمالك", "الترجى", "الوداد", "الاهلى"],
      question: "ما هو افضل نادى فى القارة السمراء",
      correctAnswer: 3,
    ),
    QuizModel(
      option: ["اسكندرية", "المنيا", "القاهرة", "أسوان"],
      question: "ما هى عاصمة مصر",
      correctAnswer: 2,
    ),
  ];


}
