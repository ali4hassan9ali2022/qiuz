import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/constents.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.dotsCount,
    required this.onTap,

    required this.onTapNext,
    // required this.outputDataDotIndicator,
  });
  final int dotsCount;
  final Function(int) onTap;
  // final Stream<double> outputDataDotIndicator;
  final VoidCallback onTapNext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 53),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Skip", style: AppStyles.styleRegular15(context)),
            SmoothPageIndicator(
              controller: Constents.pageController,
              onDotClicked: onTap,
              count: Constents.items.length,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 5,
                expansionFactor: 4,
                activeDotColor: Colors.deepOrange,
              ),
            ),
            GestureDetector(
              onTap: onTapNext,
              child: Text("Next", style: AppStyles.styleRegular15(context)),
            ),
          ],
        ),
      ),
    );
  }
}
