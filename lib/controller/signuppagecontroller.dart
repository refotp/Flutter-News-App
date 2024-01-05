import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  static SignUpPageController get instance => Get.find();

  final namaEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  RxString? gender;
  var kelamin = ''.obs;
}
