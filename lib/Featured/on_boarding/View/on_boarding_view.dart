import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_bottom_nav_bar.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: OnBoardingViewBody(),
      ),
    );
  }
}
