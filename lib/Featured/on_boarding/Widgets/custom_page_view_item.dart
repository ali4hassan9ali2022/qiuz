import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Core/utils/assets.dart';

class CustomPageViewitem extends StatelessWidget {
  const CustomPageViewitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SvgPicture.asset(Assets.imagesOnboardingImage1)),
        Text("Synonyms for QUIZ", style: AppStyles.styleSemiBold32(context)),
        SizedBox(height: 24),
        Text("Synonyms for QUIZ", style: AppStyles.styleRegular21(context)),
        SizedBox(height: 115),
      ],
    );
  }
}