import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_page_view_item.dart';
import 'package:quiz_app/constents.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      controller: Constents.pageController,
      itemCount: Constents.items.length,
      itemBuilder: (context, index) {
        return CustomPageViewitem(itemModel: Constents.items[index]);
      },
    );
  }
}
