// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:quiz_app/constents.dart';

// class OnBoardingController {
//   int currentPositionPage = 0;
//   late StreamController<int> streamControllerDotIndicator;
//   late StreamController<int> streamControllerStartText;
//   late Sink<int> inputDataDotIndicator;
//   late Stream<int> outPutDataDotIndicator;
//   late PageController onBoardgingPageViewController;
//   late Sink<int> inputDataStartText;
//   late Stream<int> outPutDataStartText;
//   bool isTappedDotIndicator = false;

//   OnBoardingController() {
//     streamControllerDotIndicator = StreamController();
//     inputDataDotIndicator = streamControllerDotIndicator.sink;
//     outPutDataDotIndicator = streamControllerDotIndicator.stream;
//     streamControllerStartText = StreamController();
//     inputDataStartText = streamControllerStartText.sink;
//     outPutDataStartText = streamControllerStartText.stream;
//     inputDataDotIndicator.add(currentPositionPage);
//     inputDataStartText.add(currentPositionPage);
//     onBoardgingPageViewController =
//         PageController(initialPage: currentPositionPage);
//   }

//   void onTapDotIndicator(int indexPosition) {
//     currentPositionPage = indexPosition;
//     inputDataDotIndicator.add(currentPositionPage);
//     onBoardgingPageViewController.animateToPage(currentPositionPage,
//        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);

//     inputDataStartText.add(currentPositionPage);
//   }

//   void onTabNext(BuildContext context) {
//     if (currentPositionPage == Constents.items.length - 1) {
//       // goToLoginPage(context: context);
//     } else {
//       currentPositionPage = currentPositionPage + 1;
//     }
//     onBoardgingPageViewController.animateToPage(currentPositionPage,
//         duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
//     inputDataDotIndicator.add(currentPositionPage);

//     inputDataStartText.add(currentPositionPage);
//   }

//   // void goToLoginPage({required BuildContext context}) {
//   //   Navigator.pushNamedAndRemoveUntil(
//   //       context, RoutesName.kLoginScreen, (route) => false);
//   // }

//   void onDispose() {
//     inputDataDotIndicator.close();
//     streamControllerDotIndicator.close();
//     inputDataStartText.close();
//     streamControllerStartText.close();
//     onBoardgingPageViewController.dispose();
//   }
// }
