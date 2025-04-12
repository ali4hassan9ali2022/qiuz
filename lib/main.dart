import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/Splash/Views/splash_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SplashView.id: (context) => SplashView()},
      initialRoute: SplashView.id,
    );
  }
}
