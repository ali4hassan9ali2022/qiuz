

import 'package:flutter/material.dart';

abstract class AppHelper {
  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color(0xff473F97),
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}