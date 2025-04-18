import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomGrade extends StatelessWidget {
  const CustomGrade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              "Name: Ali",
              style: AppStyles.styleRegular21(context).copyWith(
                fontWeight: FontWeight.w700,
                color: Color(0xff473F97),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Grade:       3     /       5",
              style: AppStyles.styleRegular21(context).copyWith(
                fontWeight: FontWeight.w700,
                color: Color(0xff473F97),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
