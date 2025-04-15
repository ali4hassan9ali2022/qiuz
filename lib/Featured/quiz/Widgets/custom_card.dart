import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomCardQuizView extends StatelessWidget {
  const CustomCardQuizView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 383 / 229,
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context),
          ),
        ),
      ),
    );
  }
}
