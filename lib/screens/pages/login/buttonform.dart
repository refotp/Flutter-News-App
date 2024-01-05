import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warta/controller/loginpagecontroller.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.text,
    this.textColor,
    this.buttonColor,
    required this.controller,
  });

  final String text;
  final Color? textColor, buttonColor;
  final LoginPageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 44.h,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(buttonColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5),
              ),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: textColor),
        ),
      ),
    );
  }
}
