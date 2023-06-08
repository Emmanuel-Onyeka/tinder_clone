import 'package:flutter/material.dart';
import '../onBoarding/onBoarding1.dart';
import '../widget/onBoardingWidget.dart';
import '../onBoarding/onBoarding2.dart';
import '../onBoarding/onBoarding3.dart';
import '../onBoarding/onBoarding4.dart';
import '../onBoarding/onBoarding5.dart';
import '../onBoarding/onBoarding6.dart';
import '../onBoarding/onBoarding7.dart';
import '../onBoarding/onBoarding8.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = '/onBoardingScreen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController? controller;
  double? progress;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            LinearProgressIndicator(
              value: progress == null ? 0.1 : progress,
              backgroundColor: Colors.white,
              color: Color(0xFFFF377D),
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
                onPageChanged: ((pageNum) {
                  print(pageNum);
                  switch (pageNum) {
                    case 0:
                      setState(() {
                        progress = 0.1;
                      });
                      break;
                    case 1:
                      setState(() {
                        progress = 0.25;
                      });
                      break;
                    case 2:
                      setState(() {
                        progress = 0.38;
                      });
                      break;
                    case 3:
                      setState(() {
                        progress = 0.52;
                      });
                      break;
                    case 4:
                      setState(() {
                        progress = 0.7;
                      });
                      break;
                    case 5:
                      setState(() {
                        progress = 0.8;
                      });
                      break;
                    case 6:
                      setState(() {
                        progress = 0.9;
                      });
                      break;
                    case 7:
                      setState(() {
                        progress = 1;
                      });
                      break;
                    default:
                      setState(() {
                        progress = 0.0;
                      });
                      break;
                  }
                }),
                children: [
                  OnBoarding1(controller!),
                  OnBoardingWidget(
                    title: 'My first name is',
                    child: OnBoarding2(),
                    controller: controller!,
                  ),
                  OnBoardingWidget(
                    title: 'My birthday is',
                    child: OnBoarding3(),
                    controller: controller!,
                  ),
                  OnBoardingWidget(
                    title: 'I am a',
                    //TODO: this should be row widget with a checkbox
                    child: OnBoarding4(),
                    controller: controller!,
                  ),
                  OnBoardingWidget(
                    title: 'Right now \nam looking \nfor...',
                    showPacer: false,
                    controller: controller!,
                    child: Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: OnBoarding5(),
                      ),
                    ),
                  ),
                  OnBoardingWidget(
                    //Todo: This widget will have a skip button on the top left part of the screen
                    title: 'My school is',
                    child: OnBoarding6(),
                    controller: controller!,
                  ),
                  OnBoardingWidget(
                    title: 'Interest',
                    child: OnBoarding7(),
                    controller: controller!,
                    showPacer: false,
                  ),
                  OnBoardingWidget(
                    title: 'Add Photos',
                    child: OnBoarding8(),
                    controller: controller!,
                    showPacer: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
