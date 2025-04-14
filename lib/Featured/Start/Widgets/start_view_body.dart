import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Q", style: AppStyles.styleRegular200(context))],
    );
  }
}
