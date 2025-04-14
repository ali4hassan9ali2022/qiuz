import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/Core/Controllers/navigator_controller.dart';
import 'package:quiz_app/Cubit/app_cubit.dart';
import 'package:quiz_app/Cubit/app_state.dart';
import 'package:quiz_app/Featured/Start/Views/start_view.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_bottom_nav_bar.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomNavBar(
            onTapSkip: () {
              NavigatorController.navigatorPushNamed(context, StartView.id, false);
            },
            position: cubit.currentIndex.toDouble(),
            onTapNext: () {
              if (cubit.currentIndex == cubit.items.length - 1) {
                NavigatorController.navigatorPushNamed(context, StartView.id, false);
              } else {
                cubit.pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
            },

            onTap: (index) {
              cubit.changeDotIndicator(index);
            },

            dotsCount: cubit.items.length,
          ),
          body: OnBoardingViewBody(),
        );
      },
    );
  }
}






// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({super.key});


//   @override
//   State<OnBoardingView> createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   late StreamController<double> streamController;
//   late Sink<double> inputData;
//   late Stream<double> outputData;
//   @override
//   void initState() {
//     // TODO: implement initState

//     super.initState();

//     streamController = StreamController();
//     inputData = streamController.sink;
//     outputData = streamController.stream;
//     Constents.pageController;
//     inputData.add(Constents.currentIndex);
//   }

//   @override
//   void dispose() {
//     inputData.close();
//     streamController.close();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
