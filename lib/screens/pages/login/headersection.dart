import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warta/widgets/style_widgets.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Logo.png',
          width: 160.w,
          height: 160.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: globalTitle(20),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subtitle,
              style: globalSubTitle(16, Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
