import 'package:flutter/material.dart';
import 'package:quiz_app/Core/utils/assets.dart';
import 'package:quiz_app/Featured/Start/Widgets/start_view_body.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = "StartView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesLoginScreen),
            fit: BoxFit.cover,
          ),
        ),
        child: StartViewBody(),
      ),
    );
  }
}
