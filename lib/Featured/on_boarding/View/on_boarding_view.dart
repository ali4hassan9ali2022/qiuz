import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_bottom_nav_bar.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/on_boarding_view_body.dart';
import 'package:quiz_app/constents.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late StreamController<double> streamController;
  late Sink<double> inputData;
  late Stream<double> outputData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;
    inputData.add(Constents.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        outputDotIndicator: outputData,
        onTap: (index) {
          Constents.currentIndex = index.toDouble();
          inputData.add(Constents.currentIndex);
        },

        dotsCount: Constents.items.length,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: OnBoardingViewBody(),
      ),
    );
  }
}
