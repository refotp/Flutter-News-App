import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warta/constants/onboardingconst.dart';
import 'package:warta/controller/onboardingcontroller.dart';
import 'package:warta/screens/pages/login/loginpage.dart';
import 'package:warta/screens/pages/onboarding/dotindicator.dart';
import 'package:warta/screens/pages/onboarding/nextbutton.dart';
import 'package:warta/screens/pages/onboarding/onboardingpagecontent.dart';
import 'package:warta/widgets/style_widgets.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? Colors.transparent
                      : null;
                },
              ),
            ),
            onPressed: () {
              Get.offAll(const LoginPage());
            },
            child: Text(
              'Skip',
              style: textButton(),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  SingleChildScrollView(
                    child: OnBoardPageContent(
                      image: OnBoardingConst.img1,
                      title: OnBoardingConst.title1,
                      desc: OnBoardingConst.desc1,
                    ),
                  ),
                  SingleChildScrollView(
                    child: OnBoardPageContent(
                      image: OnBoardingConst.img2,
                      title: OnBoardingConst.title2,
                      desc: OnBoardingConst.desc2,
                    ),
                  ),
                  SingleChildScrollView(
                    child: OnBoardPageContent(
                      image: OnBoardingConst.img3,
                      title: OnBoardingConst.title3,
                      desc: OnBoardingConst.desc3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [DotIndicator(), NextButton()],
            ),
          )
        ],
      ),
    );
  }
}
