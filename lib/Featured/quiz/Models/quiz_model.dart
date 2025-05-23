class QuizModel {
  final String question;
  final List<dynamic> option; //
  final int correctAnswer;
  QuizModel({required this.option,required this.question,required this.correctAnswer,});
  List<dynamic> getShuffledAnsswers() {
    final suffledList = List.of(option);
    suffledList.shuffle();
    return suffledList;
  } 
}
