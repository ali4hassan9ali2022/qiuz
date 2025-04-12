import 'package:flutter/material.dart';

abstract class NavigatorController {
  static void navigatorPushNamed(BuildContext context, String child) {
      Navigator.pushNamedAndRemoveUntil(context,child , (route) => false,);
  }
}
