import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/quiz/Widgets/custom_quiz_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          itemBuilder:
              (context, index) => GestureDetector(
                onTap: () {
                  cubit.selcetedItem(index);
                },
                child: CustomitemQuizView(
                  isSelected:
                      cubit.isSelected == null
                          ? false
                          : cubit.isSelected == index
                          ? true
                          : false,
                  option: AppHelper.options[cubit.listQuestion].option[index],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(height: 25),
          itemCount: AppHelper.options[cubit.listQuestion].option.length,
        );
      },
    );
  }
}
