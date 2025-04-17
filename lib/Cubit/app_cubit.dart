import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Helper/app_helper.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/on_boarding/Models/item_model.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialAppState());
  int currentIndex = 0;
  // int listQuestion = 0;
  bool isLastQuestion = false;
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

  List<int> selectedAnswers = [];
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
    isNext = true;
    if (selectedAnswers.length > currentIndex) {
      selectedAnswers[currentIndex] = index;
    } else {
      selectedAnswers.add(index);
    }
    changeButton();
    emit(SelcetedItemAppState());
    // Future.delayed(Duration(seconds: 1), () {
    //   if(!isLastQuestion) {
    //     goToNextQuestion();
    //   }
    // });
  }

  bool isNext = false;
  bool showTimer = true;
  void changeButton() {
    // if (isSelected != -1) {
    //   isNext = true;
    // } else {
    //   isNext = false;
    // }
    isNext = isSelected != -1;
    emit(ChangeButtonItemAppState());
  }

  void goToNextQuestion() {
    if (currentIndex < AppHelper.options.length - 1 && isSelected != -1) {
      currentIndex++;
      isSelected = -1;
      isNext = false;
      isLastQuestion = currentIndex == AppHelper.options.length - 1;
      showTimer = false;
      Future.delayed(Duration(milliseconds: 100), () {
        showTimer = true;
        emit(ResetTimerAppState());
      });
      emit(NextQuestionAppState());
    } else {
      isLastQuestion = true;
      emit(FinishQuestionAppState());
    }
  }
}
