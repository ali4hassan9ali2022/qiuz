import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomActiveItemQuizView extends StatelessWidget {
  const CustomActiveItemQuizView({super.key, required this.option});
  final String option;

  @override
  Widget build(BuildContext context) {
    // var cubit = BlocProvider.of<AppCubit>(context);
    return CustomButton(
      borderRadius: 20,
      color: Color(0xffCDCDE1),
      width: double.infinity,
      height: 53,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(option, style: AppStyles.styleSemiBold20(context)),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(
              CupertinoIcons.checkmark_alt_circle_fill,
              color: Color(0xff524B9E),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomINActiveItemQuizView extends StatelessWidget {
  const CustomINActiveItemQuizView({super.key, required this.option});
  final String option;
  @override
  Widget build(BuildContext context) {
    // var cubit = BlocProvider.of<AppCubit>(context);
    return CustomButton(
      borderRadius: 20,
      color: Color(0xffffffff),
      width: double.infinity,
      height: 53,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(option, style: AppStyles.styleSemiBold20(context)),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Container(
              height: 20,
              width: 20,

              decoration: ShapeDecoration(
                color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(color: Color(0xff524B9E), width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
