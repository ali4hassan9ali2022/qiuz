import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/answer/Views/answer_view.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_list_view.dart';
import 'package:quiz_app/Featured/quiz/Widgets/question_section.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Expanded(child: SizedBox(height: 88)),
              QuestionSection(),
              Expanded(child: SizedBox()),
              CustomListView(),
              Expanded(child: SizedBox(height: 59)),
              BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap:
                        cubit.isNext
                            ? () {
                              if (cubit.isLastQuestion) {
                                // NavigatorController.navigatorPushNamed(
                                //   context,
                                //   AnswerView.id,
                                //   false,
                                //   null,
                                // );
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  AnswerView.id,
                                  (route) => false,
                                  arguments: {
                                    "Name": name,
                                    "Answers": cubit.selectedAnswers,
                                  },
                                );
                              } else {
                                cubit.goToNextQuestion();
                              }
                            }
                            : null,
                    child: CustomButton(
                      borderRadius: 20,
                      color: cubit.isNext ? Color(0xff473F97) : Colors.grey,
                      width: double.infinity,
                      height: 59,
                      child: Center(
                        child: Text(
                          cubit.isLastQuestion ? "Finish Quiz" : "Next",
                          style: AppStyles.styleSemiBold24(context),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 61),
            ],
          ),
        );
      },
    );
  }
}
