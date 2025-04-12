import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/size_config.dart';


abstract class AppStyles {

  static TextStyle styleRegular21(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 21),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: Color(0xff3D003E),
    );
  }
  static TextStyle styleSemiBold32(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: Color(0xff3D003E),
    );
  }
  static TextStyle styleRegular15(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: Color(0xff3D003E),
    );
  }
  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Color(0xff473F97),
    );
  }
  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
      color: Color(0xff473F97),
    );
  }
  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: Color(0xff473F97),
    );
  }
}


// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
