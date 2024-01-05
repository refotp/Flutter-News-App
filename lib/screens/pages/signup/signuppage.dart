import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/controller/signuppagecontroller.dart';
import 'package:warta/screens/pages/login/formspacing.dart';
import 'package:warta/screens/pages/login/headersection.dart';
import 'package:warta/screens/pages/login/textformfield.dart';
import 'package:warta/screens/pages/signup/radiobutton.dart';
import 'package:warta/widgets/style_widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpPageController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSection(
                  title: 'Register',
                  subtitle:
                      'Daftarkan dirimu dan nikmati berita-berita terbaik yang telah kami persiapkan'),
              Form(
                child: Column(
                  children: [
                    const FormSpacing(),
                    TextInputField(
                        label: 'Prayitno Bambang Hadikusumo',
                        icon: Iconsax.user,
                        fieldName: 'Nama Lengkap',
                        textEditingController:
                            controller.namaEditingController),
                    const FormSpacing(),
                    TextInputField(
                        label: 'prayitno@gmail.com',
                        icon: Iconsax.sms,
                        fieldName: 'Email',
                        textEditingController:
                            controller.emailEditingController),
                    const FormSpacing(),
                    TextInputField(
                        label: 'kudaLautberKepala12',
                        icon: Iconsax.lock,
                        fieldName: 'Password',
                        textEditingController:
                            controller.passwordEditingController),
                    const FormSpacing(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jenis Kelamin',
                          style: globalSubTitle(14, Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RadioButton(
                              controller: controller,
                              value: "Pria",
                              label: "Pria",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RadioButton(
                                controller: controller,
                                value: "Wanita",
                                label: "Wanita")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
