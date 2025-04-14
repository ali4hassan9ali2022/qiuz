import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Controllers/navigator_controller.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Featured/on_boarding/View/on_boarding_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Q", style: AppStyles.styleRegular400(context)),
          GestureDetector(
            onTap: () {
              NavigatorController.navigatorPushNamed(
                context,
                OnBoardingView.id,
                false
              );
            },
            child: CustomButton(
              borderRadius: 35,
              color: Colors.white,
              width: double.infinity,
              height: 70,
              child: Center(
                child: Text(
                  "Get Started",
                  style: AppStyles.styleRegular21(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
