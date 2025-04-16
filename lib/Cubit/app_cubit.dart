import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/on_boarding/Models/item_model.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialAppState());
  int currentIndex = 0;
  int listQuestion = 1;

  List<ItemModel> items = [
    ItemModel(
      image: Assets.imagesOnboardingImage3,
      title: "Synonyms for QUIZ",
      subTitle: "Synonyms for QUIZ",
    ),
    ItemModel(
      image: Assets.imagesOnboardingImage2,
      title: "Antonyms of QUIZ",
      subTitle:
          "Sunt in culpa qui officia\n deserunt mollit anim idest laborum.",
    ),
    ItemModel(
      image: Assets.imagesOnboardingImage1,
      title: "Cool Quiz",
      subTitle: "Culpa qui officia deserunt mollit anim id est laborum.",
    ),
  ];
  PageController pageController = PageController();
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  void lastPageView(int index) {
    currentIndex = index;
    emit(ChangePgaeViewAppState());
  }

  void changeDotIndicator(int index) {
    currentIndex = index;
    emit(ChangeDotIndicatorAppState());
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  int isSelected = -1;
  void selcetedItem(int index) {
    isSelected = index;
    changeButton();
    emit(SelcetedItemAppState());
  }

  bool isNext = false;
  void changeButton() {
    if (isSelected != -1) {
      isNext = true;
    } else {
      isNext = false;
    }
    emit(ChangeButtonItemAppState());
  }

  // Timer? questionTimer;
  // double remainingPercent = 1.0;
  // int remainingSeconds = 60;
  // Timer? uiTimer;
  // void startTimerForQuestion() {
  //   cancelTimer();
  //   remainingPercent = 1.0;
  //   remainingSeconds = 60;
  //   uiTimer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     remainingSeconds--;
  //     remainingPercent = remainingSeconds / 60;
  //     emit(UpdateTimerAppState());
  //     if (remainingSeconds == 0) {
  //       timer.cancel();
  //     }
  //   });
  //   questionTimer = Timer(Duration(minutes: 1), () {
  //     goToNextQuestion();
  //   });
  // }

  // void cancelTimer() {
  //   questionTimer?.cancel();
  //   uiTimer?.cancel();
  // }

  void goToNextQuestion() {
    if (currentIndex < AppHelper.options.length - 1) {
      currentIndex++;
      isSelected = -1;
      isNext = false;
      emit(NextQuestionAppState());
    } else {
      emit(FinishQuestionAppState());
    }
  }
}
