import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Featured/Splash/Views/splash_view.dart';
import 'package:quiz_app/Featured/Start/Views/start_view.dart';
import 'package:quiz_app/Featured/on_boarding/View/on_boarding_view.dart';
import 'package:quiz_app/Featured/quiz/Views/quiz_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashView.id: (context) => SplashView(),
          OnBoardingView.id: (context) => OnBoardingView(),
          StartView.id: (context) => StartView(),
          QuizView.id: (context) => QuizView(),
        },
        initialRoute: SplashView.id,
      ),
    );
  }
}
