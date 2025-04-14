import 'package:flutter/material.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty) {
          return "من فضلك ادخل اسمك";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: AppHelper.outlineInputBorder(),
        enabledBorder: AppHelper.outlineInputBorder(),
        focusedBorder: AppHelper.outlineInputBorder(),
      ),
    );
  }
}