import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/on_boarding/Models/item_model.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialAppState());
  int currentIndex = 0;
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
  int? isSelected;
  void selcetedItem(int index) {
    isSelected = index ;
    emit(SelcetedItemAppState());
  }
}
