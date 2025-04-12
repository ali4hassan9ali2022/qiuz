import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 53),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Skip", style: AppStyles.styleRegular15(context)),
          // DotsIndicator(
          //   dotsCount: Constents.items.length,
          //   decorator: DotsDecorator(),
          //   animate: true,
          //   onTap: (position) {
          //     Constents.pageController.animateToPage(
          //       position,
          //       duration: Duration(milliseconds: 750),
          //       curve: Curves.bounceIn,
          //     );
          //   },
          // ),
          Text("Next", style: AppStyles.styleRegular15(context)),
        ],
      ),
    );
  }
}
