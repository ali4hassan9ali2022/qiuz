import 'package:flutter/material.dart';


import 'package:quiz_app/Featured/on_boarding/Widgets/custom_bottom_nav_bar.dart';
import 'package:quiz_app/Featured/on_boarding/Widgets/custom_page_view_item.dart';
import 'package:quiz_app/constents.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        onTapNext: () {
          // if (Constents.currentIndex == Constents.items.length - 1) {
          // } else {
          //   Constents.currentIndex = Constents.currentIndex + 1;
          //   Constents.pageController.nextPage(
          //     duration: Duration(milliseconds: 500),
          //     curve: Curves.easeInOut,
          //   );
          //   inputData.add(Constents.currentIndex);
          // }
        },

        onTap: (index) {
          // Constents.currentIndex = index.toDouble();
          // Constents.pageController.nextPage(
          //   duration: Duration(milliseconds: 750),
          //   curve: Curves.easeInOut,
          // );
          // inputData.add(Constents.currentIndex);
        },

        dotsCount: Constents.items.length,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: Constents.pageController,
          itemCount: Constents.items.length,
          itemBuilder: (context, index) {
            return CustomPageViewitem(itemModel: Constents.items[index]);
          },
        ),
      ),
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
