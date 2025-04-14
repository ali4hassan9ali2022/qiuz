import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.dotsCount,
    required this.onTap,

    required this.onTapNext,
    required this.position,
    // required this.outputDataDotIndicator,
  });
  final int dotsCount;
  final Function(int) onTap;
  // final Stream<double> outputDataDotIndicator;
  final VoidCallback onTapNext;
  final double position;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 53),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Skip", style: AppStyles.styleRegular15(context)),
            DotsIndicator(
              dotsCount: dotsCount,
              onTap: onTap,
              position: position,
              animate: true,
              animationDuration: Duration(milliseconds: 500),
              decorator: DotsDecorator(
                activeColor: Color(0xff3D003E),
                activeSize: Size(12, 12),
                color: Color(0xffE5E5E5),
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



 // SmoothPageIndicator(
            //   controller: cubit.pageController,
            //   onDotClicked: onTap,
            //   count: cubit.items.length,
            //   effect: const ExpandingDotsEffect(
            //     dotColor: Colors.grey,
            //     dotHeight: 10,
            //     dotWidth: 10,
            //     spacing: 5,
            //     expansionFactor: 4,
            //     activeDotColor: Colors.deepOrange,
            //   ),
            // ),