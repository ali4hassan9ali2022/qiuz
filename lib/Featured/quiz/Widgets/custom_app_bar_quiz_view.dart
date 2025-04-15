import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomAppBarQuizView extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarQuizView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      title: Text("7/10", style: AppStyles.styleSemiBold18(context)),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
