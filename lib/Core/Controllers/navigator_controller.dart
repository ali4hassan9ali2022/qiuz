import 'package:flutter/material.dart';

abstract class NavigatorController {
  static void navigatorPushNamed(BuildContext context, String child, bool isBack) {
      Navigator.pushNamedAndRemoveUntil(context,child , (route) => isBack,);
  }
}
