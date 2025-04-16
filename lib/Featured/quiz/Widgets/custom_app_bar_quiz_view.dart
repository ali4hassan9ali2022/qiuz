import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';

class CustomAppBarQuizView extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return AppBar(
      backgroundColor: Color(0xffEFF0F3),
      leadingWidth: 140,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: GestureDetector(
          onTap: () {
            Navigator.canPop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios, size: 17),
              Text("Previous", style: AppStyles.styleSemiBold12(context)),
            ],
          ),
        ),
      ),
      title: Text(
        "${cubit.currentIndex+1}/${AppHelper.options.length}",
        style: AppStyles.styleSemiBold18(context),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
