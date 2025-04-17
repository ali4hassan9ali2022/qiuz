import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_card.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_circular_indicator.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            CustomCardQuizView(
              text: AppHelper.options[cubit.currentIndex].question,
            ),
            if(cubit.showTimer) 
            Positioned(
              right: 0,
              left: 0,
              top: -29,
              child: CustomCircularIndicator(
                onComplete: () {
                  if (!cubit.isLastQuestion) {
                    cubit.goToNextQuestion();
                  }
                },
                duration: 60,
              ),
            ),
          ],
        );
      },
    );
  }
}
