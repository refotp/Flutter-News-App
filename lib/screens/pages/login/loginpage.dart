import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/controller/loginpagecontroller.dart';
import 'package:warta/screens/pages/login/bottomsection.dart';
import 'package:warta/screens/pages/login/buttonform.dart';
import 'package:warta/screens/pages/login/formspacing.dart';
import 'package:warta/screens/pages/login/headersection.dart';
import 'package:warta/screens/pages/login/textformfield.dart';
import 'package:warta/screens/pages/login/textformpasswordfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginPageController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSection(
                title: 'Login',
                subtitle:
                    'Temukanlah berita tanpa batas dengan sumber terpercaya',
              ),
              const FormSpacing(),
              Form(
                child: Column(
                  children: [
                    TextInputField(
                      textEditingController: controller.emailController,
                      label: 'prayitno@gmail.com',
                      icon: Iconsax.sms,
                      fieldName: 'E-mail',
                    ),
                    const FormSpacing(),
                    TextFormPasswordField(
                      fieldName: 'Password',
                      label: 'kudaLautberKepala12',
                      controller: controller.passwordController,
                    ),
                    const FormSpacing(),
                    const BottomSection(),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              FormButton(
                controller: controller,
                text: 'Sign In',
                textColor: Colors.white,
                buttonColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
