import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Widgets/custom_button.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';

class CustomTrueAnsweritem extends StatelessWidget {
  const CustomTrueAnsweritem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xff35A906),
        ),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              "In what year did the United States \nhost the FIFA World Cup for the first time?",
              style: AppStyles.styleSemiBold18(
                context,
              ).copyWith(color: Colors.white),
            ),
            SizedBox(height: 20),
            CustomButton(
              borderRadius: 20,
              color: Color(0xffFFFFFF),
              width: double.infinity,
              height: 41,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      CupertinoIcons.checkmark_alt_circle_fill,
                      color: Color(0xff524B9E),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1986",
                        style: AppStyles.styleSemiBold20(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}