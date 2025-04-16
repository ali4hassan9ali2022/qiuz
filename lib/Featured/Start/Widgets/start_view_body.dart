import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Controllers/navigator_controller.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/Start/Widgets/custom_text_field.dart';
import 'package:quiz_app/Featured/quiz/Views/quiz_view.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Form(
            key: cubit.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Q", style: AppStyles.styleRegular200(context)),
                // SizedBox(),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter your name",
                        style: AppStyles.styleSemiBold18(context),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(controller: cubit.nameController),
                  ],
                ),
                // Spacer(),
                GestureDetector(
                  onTap: () {
                    if (cubit.formKey.currentState!.validate()) {
                      NavigatorController.navigatorPushNamed(
                        context,
                        QuizView.id,
                        true,
                        cubit.nameController.text,
                      );
                    }
                  },
                  child: CustomButton(
                    borderRadius: 20,
                    color: Color(0xff473F97),
                    width: double.infinity,
                    height: 59,
                    child: Center(
                      child: Text(
                        "Start",
                        style: AppStyles.styleSemiBold24(context),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 101),
              ],
            ),
          );
        },
      ),
    );
  }
}
