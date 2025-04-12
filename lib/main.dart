import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/Splash/Views/splash_view.dart';
import 'package:quiz_app/Featured/on_boarding/View/on_boarding_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (context) => SplashView(),
        OnBoardingView.id: (context) => OnBoardingView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
