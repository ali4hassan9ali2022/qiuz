import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomOnBoardingText extends StatelessWidget {
  const CustomOnBoardingText({
    super.key,
    required this.onTapNext,
    required this.text,
  });

  final VoidCallback onTapNext;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapNext,
      child: Text(text, style: AppStyles.styleRegular15(context)),
    );
  }
}