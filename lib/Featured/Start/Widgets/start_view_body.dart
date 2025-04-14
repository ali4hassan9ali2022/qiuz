import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text("Q", style: AppStyles.styleRegular200(context)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter your name",
              style: AppStyles.styleSemiBold18(context),
            ),
          ),
        ],
      ),
    );
  }
}
