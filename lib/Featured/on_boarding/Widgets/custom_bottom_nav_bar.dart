import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_on_boarding_text.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.dotsCount,
    required this.onTap,

    required this.onTapNext,
    required this.position, required this.onTapSkip,
  });
  final int dotsCount;
  final Function(int) onTap;
  final VoidCallback onTapNext;
  final VoidCallback onTapSkip;
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
            CustomOnBoardingText(onTapNext: onTapSkip, text: "Skip"),
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
            CustomOnBoardingText(
              text:
                  cubit.currentIndex == cubit.items.length - 1
                      ? "Start"
                      : "Next",
              onTapNext: onTapNext,
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