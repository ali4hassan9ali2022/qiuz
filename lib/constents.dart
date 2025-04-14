import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Featured/on_boarding/Models/item_model.dart';

abstract class Constents {
  static List<ItemModel> items = [
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
 static PageController pageController = PageController();
 static double currentIndex = 0;
}
