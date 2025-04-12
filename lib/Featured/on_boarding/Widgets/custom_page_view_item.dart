import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/Core/utils/app_styles.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Featured/on_boarding/Models/item_model.dart';

class CustomPageViewitem extends StatelessWidget {
  const CustomPageViewitem({
    super.key, required this.itemModel,
  });
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SvgPicture.asset(itemModel.image)),
        Text(itemModel.title, style: AppStyles.styleSemiBold32(context)),
        SizedBox(height: 24),
        Text(itemModel.subTitle, style: AppStyles.styleRegular21(context)),
        SizedBox(height: 115),
      ],
    );
  }
}