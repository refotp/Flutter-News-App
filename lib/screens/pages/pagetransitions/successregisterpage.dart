import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:warta/widgets/style_widgets.dart';

class SuccessRegisterPage extends StatelessWidget {
  const SuccessRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Lottie.asset(
                    'assets/images/register/Animation - 1704518013841.json',
                    width: 300.w,
                    height: 400.h),
                Text(
                  'Akun berhasil dibuat',
                  style: globalTitle(20, Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Selamat akun anda berhasil dibuat, kami akan mengarahkan anda ke halaman selanjutnya. Tunggu sebentar',
                  textAlign: TextAlign.center,
                  style: globalSubTitle(16, Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
