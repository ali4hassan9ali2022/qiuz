import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_inactiveItem_quiz_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => CustomInactiveItemQuizView(),
      separatorBuilder: (context, index) => SizedBox(height: 25),
      itemCount: AppHelper.options.length,
    );
  }
}
