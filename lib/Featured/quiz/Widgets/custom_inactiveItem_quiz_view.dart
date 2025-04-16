import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomInactiveItemQuizView extends StatelessWidget {
  const CustomInactiveItemQuizView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            child: Text(
              "1986",
              style: AppStyles.styleSemiBold20(context),
            ),
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
