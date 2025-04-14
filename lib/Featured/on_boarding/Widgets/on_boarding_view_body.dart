import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_page_view_item.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      onPageChanged: (value) {
        cubit.lastPageView(value);
      },
      controller: cubit.pageController,
      itemCount: cubit.items.length,
      itemBuilder: (context, index) {
        return CustomPageViewitem(itemModel: cubit.items[index]);
      },
    );
  }
}
