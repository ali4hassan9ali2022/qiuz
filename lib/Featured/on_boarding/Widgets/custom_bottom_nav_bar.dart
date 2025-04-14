import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.dotsCount,
    required this.onTap, required this.outputDotIndicator,
  });
  final int dotsCount;
  final Function(int) onTap;
  final Stream<double> outputDotIndicator; 
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
            StreamBuilder<double>(
              stream: outputDotIndicator,
              builder: (context, snapshot) {
                return DotsIndicator(
                  dotsCount: dotsCount,
                  position: snapshot.data == null ? 0 : snapshot.data!,
                  onTap: onTap,
                  animate: true,
                  animationDuration: Duration(milliseconds: 750),
                  decorator: DotsDecorator(
                    activeColor: Color(0xff3D003E),
                    color: Color(0xffE5E5E5),
                    activeSize: Size(12, 12),
                  ),
                );
              }
            ),
            Text("Next", style: AppStyles.styleRegular15(context)),
          ],
        ),
      ),
    );
  }
}
