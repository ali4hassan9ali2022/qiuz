import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/Splash/Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = "SplashView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff473F97),
      body: SplashViewBody(),
    );
  }
}
