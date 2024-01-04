import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:warta/controller/onboardingcontroller.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: const ExpandingDotsEffect(
          activeDotColor: Colors.amber, dotHeight: 6, dotColor: Colors.blue),
    );
  }
}
