import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warta/controller/signuppagecontroller.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    super.key,
    required this.controller,
    required this.value,
    required this.label,
  });

  final SignUpPageController controller;
  final String value, label;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Obx(() {
      return RadioListTile<String>(
        tileColor: Colors.blue,
        fillColor: const MaterialStatePropertyAll(Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        value: value,
        activeColor: Colors.amber,
        groupValue: controller.gender.value,
        onChanged: (value) {
          controller.upDateSelectedGender(value!);
        },
        title: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }));
  }
}
