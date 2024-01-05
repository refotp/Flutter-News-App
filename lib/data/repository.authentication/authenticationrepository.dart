import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:warta/screens/pages/login/loginpage.dart';
import 'package:warta/screens/pages/onboarding/onboardingpage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    pindahHalaman();
  }

  pindahHalaman() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginPage())
        : Get.offAll(() => const OnBoardingPage());
  }
}
