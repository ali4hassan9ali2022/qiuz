import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomInfoStudent extends StatelessWidget {
  const CustomInfoStudent({super.key, required this.correctAnser, required this.name, required this.totalQuestions});
  final int correctAnser;
  final String name;
  final int totalQuestions; 
  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> info =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return AspectRatio(
      aspectRatio: 383 / 107,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: $name",
              style: AppStyles.styleRegular21(
                context,
              ).copyWith(fontWeight: FontWeight.w700, color: Color(0xff473F97)),
            ),
            SizedBox(height: 5),
            Text(
              "Grade:       $correctAnser     /       $totalQuestions",
              style: AppStyles.styleRegular21(
                context,
              ).copyWith(fontWeight: FontWeight.w700, color: Color(0xff473F97)),
            ),
          ],
        ),
      ),
    );
  }
}
