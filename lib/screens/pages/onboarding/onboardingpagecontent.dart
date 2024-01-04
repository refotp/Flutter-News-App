import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:warta/widgets/style_widgets.dart';

class OnBoardPageContent extends StatelessWidget {
  const OnBoardPageContent({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });
  final String image, title, desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(image,
            frameRate: FrameRate(30), height: 300.h, width: double.maxFinite),
        Text(
          title,
          style: textTitle(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: textDesc(),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
