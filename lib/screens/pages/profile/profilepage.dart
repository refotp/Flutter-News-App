import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warta/controller/profilepagecontroller.dart';
import 'package:warta/data/repository.authentication/authenticationrepository.dart';
import 'package:warta/screens/pages/login/formspacing.dart';
import 'package:warta/widgets/style_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfilePageController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Obx(() {
                  if (controller.user.value.gender != "Pria") {
                    return Image.asset(
                      'assets/images/profile/9439729.jpg',
                      width: 150,
                      height: 150,
                    );
                  } else {
                    return Image.asset(
                      'assets/images/profile/9440461.jpg',
                      width: 150,
                      height: 150,
                    );
                  }
                }),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Nama Lengkap',
                style: globalTitle(16, Colors.black),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        color: Colors.blue,
                        padding: const EdgeInsets.all(24.0),
                        width: double.maxFinite,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Iconsax.user,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Obx(() => Text(
                                  controller.user.value.namaLengkap,
                                  style: globalSubTitle(16, Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const FormSpacing(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Email',
                style: globalTitle(16, Colors.black),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                          color: Colors.blue,
                          padding: const EdgeInsets.all(24.0),
                          width: double.maxFinite,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.sms,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Obx(() => Text(
                                      controller.user.value.email,
                                      style: globalSubTitle(16, Colors.white),
                                    )),
                              ])),
                    ),
                  )
                ],
              ),
            ),
            const FormSpacing(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Nomor Telefon',
                style: globalTitle(16, Colors.black),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                          color: Colors.blue,
                          padding: const EdgeInsets.all(24.0),
                          width: double.maxFinite,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.call,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Obx(() => Text(
                                      controller.user.value.noTelfon,
                                      style: globalSubTitle(16, Colors.white),
                                    )),
                              ])),
                    ),
                  )
                ],
              ),
            ),
            const FormSpacing(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Nomor Telefon',
                style: globalTitle(16, Colors.black),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                          color: Colors.blue,
                          padding: const EdgeInsets.all(24.0),
                          width: double.maxFinite,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Obx(() {
                                  if (controller.user.value.gender != "Pria") {
                                    return const Icon(Iconsax.woman);
                                  } else {
                                    return const Icon(
                                      Iconsax.man,
                                      color: Colors.white,
                                    );
                                  }
                                }),
                                const SizedBox(
                                  width: 15,
                                ),
                                Obx(() => Text(
                                      controller.user.value.gender,
                                      style: globalSubTitle(16, Colors.white),
                                    )),
                              ])),
                    ),
                  )
                ],
              ),
            ),
            const FormSpacing(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: double.maxFinite,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: () {
                    AuthenticationRepository.instance.logout();
                  },
                  style: buttonFormStyle(Colors.amber[700]),
                  child: Text(
                    'Log out',
                    style: textButton(Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
