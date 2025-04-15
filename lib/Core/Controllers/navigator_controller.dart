import 'package:flutter/material.dart';

abstract class NavigatorController {
  static void navigatorPushNamed(BuildContext context, String child, bool isBack, Object? arguments) {
      Navigator.pushNamedAndRemoveUntil(context,child , (route) => isBack, arguments: arguments);
  }
}
