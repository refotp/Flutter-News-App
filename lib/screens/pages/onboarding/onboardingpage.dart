import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warta/constants/stringconst.dart';
import 'package:warta/controller/onboardingcontroller.dart';
import 'package:warta/screens/pages/login/loginpage.dart';
import 'package:warta/screens/pages/onboarding/dotindicator.dart';
import 'package:warta/screens/pages/onboarding/nextbutton.dart';
import 'package:warta/screens/pages/onboarding/onboardingpagecontent.dart';
import 'package:warta/widgets/style_widgets.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
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
                      image: StringConst.img1,
                      title: StringConst.title1,
                      desc: StringConst.desc1,
                    ),
                  ),
                  SingleChildScrollView(
                    child: OnBoardPageContent(
                      image: StringConst.img2,
                      title: StringConst.title2,
                      desc: StringConst.desc2,
                    ),
                  ),
                  SingleChildScrollView(
                    child: OnBoardPageContent(
                      image: StringConst.img3,
                      title: StringConst.title3,
                      desc: StringConst.desc3,
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
