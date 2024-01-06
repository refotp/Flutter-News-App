import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warta/widgets/style_widgets.dart';

class ButtonForm extends StatelessWidget {
  const ButtonForm({
    super.key,
    required this.text,
    required this.controller,
  });
  final String text;
  final Future<void> controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 44.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Color.fromARGB(255, 206, 155, 1),
          ),
        ),
        child: Text(
          'Register',
          style: textButton(Colors.white),
        ),
      ),
    );
  }
}
