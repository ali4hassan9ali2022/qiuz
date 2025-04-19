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



class AnswerScreenController {
  late Map studentAnswers;
  List<bool> answers = [];

  void getStudentAnswers(Map studentAnswers) {
    this.studentAnswers = studentAnswers;
    compareAnswers();
  }

  void compareAnswers() {
    answers.clear();
    for (int i = 0; i < AppHelper.options.length; i++) {
      bool an = studentAnswers["kListCorrectAnswer"][i] ==
          AppHelper.options[i].correctAnswer;
      answers.add(an);
    }
    print(answers);
  }

  void printList() {
    print(studentAnswers);
  }

  int getCountCorrectAnswer() {
    int count = 0;
    for (bool i in answers) {
     if( i == true) {
       count++;
     }
    }
    return count;
  }
}