import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/data/repository.authentication/authenticationrepository.dart';
import 'package:warta/screens/pages/pagetransitions/successloginpage.dart';

class LoginPageController extends GetxController {
  static LoginPageController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  RxBool hidePass = true.obs;

  Future<void> logIn() async {
    try {
      if (!loginFormKey.currentState!.validate()) {
        return;
      } else {
        openDialig();
        final userCredential = await AuthenticationRepository.instance
            .logIn(emailController.text.trim(), passwordController.text.trim());

        onLoginSuccess();
      }
    } on FirebaseAuthException catch (e) {
      Get.back();
      if (e.code == 'invalid-credential') {
        Get.snackbar('', '',
            duration: const Duration(seconds: 5),
            snackPosition: SnackPosition.BOTTOM,
            icon: const Icon(
              Iconsax.forbidden_25,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            colorText: Colors.white,
            titleText: const Text(
              'Error',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            messageText: const Text(
              'Periksa kembali email atau password anda',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ));
      } else {
        Get.snackbar('Terjadi kesalahan', '$e',
            snackPosition: SnackPosition.BOTTOM,
            icon: const Icon(
              Iconsax.forbidden_25,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    }
  }
}

Future<void> onLoginSuccess() async {
  Get.off(() => const SuccessLoginPage());

  // Menunda kembali ke halaman sebelumnya setelah 3 detik (sesuaikan dengan kebutuhan Anda)
  Future.delayed(const Duration(seconds: 5), () {
    AuthenticationRepository.instance.pindahHalaman(); // Pergi ke halaman baru
  });
}

void openDialig() {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: const SizedBox(
          width: 100,
          height: 150,
          child: SpinKitCubeGrid(
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
      barrierDismissible: false);
}
