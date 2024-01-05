import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:warta/screens/pages/login/loginpage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  RxInt currentIndex = 0.obs;
  final pageController = PageController();

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentIndex.value < 2) {
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      pageController.nextPage(
          duration: const Duration(milliseconds: 800), curve: Curves.ease);
    } else {
      Get.offAll(const LoginPage());
    }
  }
}
