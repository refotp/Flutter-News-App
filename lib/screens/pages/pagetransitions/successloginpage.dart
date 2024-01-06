import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:warta/widgets/style_widgets.dart';

class SuccessLoginPage extends StatelessWidget {
  const SuccessLoginPage({super.key});

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
                    'assets/images/register/Animation - 1704531583586.json',
                    width: 300.w,
                    height: 400.h),
                Text(
                  'Selamat datang kembali!',
                  style: globalTitle(20, Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Selamat datang kembali, mohon tunggu sebentar kami akan mengalihkan anda sesaat lagi',
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
