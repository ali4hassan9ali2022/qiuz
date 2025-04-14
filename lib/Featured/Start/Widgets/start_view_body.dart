import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/Start/Widgets/custom_text_field.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Form(
              key: cubit.formKey,
              child: Column(
                children: [
                  Text("Q", style: AppStyles.styleRegular200(context)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enter your name",
                      style: AppStyles.styleSemiBold18(context),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(),
                ],
              ),
            );
        },
      ),
    );
  }
}
