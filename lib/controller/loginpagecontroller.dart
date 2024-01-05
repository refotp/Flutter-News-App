import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  static LoginPageController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isObscure = true.obs;
  RxBool isPassword = false.obs;
  RxBool isEmail = true.obs;

  bool passwordOrNo(bool isPass) {
    if (isPass = true) {
      return isPassword.value = true;
    } else {
      return false;
    }
  }
}
