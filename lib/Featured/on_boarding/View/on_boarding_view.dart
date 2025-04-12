import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
