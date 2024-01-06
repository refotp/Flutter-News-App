import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:warta/data/repository.authentication/authenticationrepository.dart';
import 'package:warta/data/repository.authentication/userrepository.dart';
import 'package:warta/model/usermodel.dart';
import 'package:warta/screens/pages/pagetransitions/successregisterpage.dart';

class SignUpPageController extends GetxController {
  static SignUpPageController get instance => Get.find();

  final namaEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPassEditingController = TextEditingController();
  final phoneNumberEditingController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  RxString gender = '-'.obs;
  RxBool hidePass = true.obs;
  RxBool confirmHidePass = true.obs;

  void upDateSelectedGender(String value) {
    gender.value = value;
  }

  Future<void> signUp() async {
    try {
      if (!signUpFormKey.currentState!.validate()) {
        return;
      } else {
        openDialig();
        final userCredential = await AuthenticationRepository.instance
            .registerWithEmailAndPassword(emailEditingController.text.trim(),
                passwordEditingController.text.trim());
        final newUser = UserModel(
            id: userCredential.user!.uid,
            namaLengkap: namaEditingController.text,
            email: emailEditingController.text.trim(),
            noTelfon: phoneNumberEditingController.text.trim(),
            gender: gender.value);
        final userRepository = Get.put(UserRepository());
        await userRepository.saveUserData(newUser);
        onRegistrationSuccess();
      }
    } catch (e) {
      return;
    }
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

  void onRegistrationSuccess() {
    // Menampilkan halaman baru untuk sementara
    Get.off(() => const SuccessRegisterPage());

    // Menunda kembali ke halaman sebelumnya setelah 3 detik (sesuaikan dengan kebutuhan Anda)
    Future.delayed(const Duration(seconds: 5), () {
      AuthenticationRepository.instance
          .pindahHalaman(); // Pergi ke halaman baru
    });
  }
}
