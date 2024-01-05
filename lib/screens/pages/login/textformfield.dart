import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warta/widgets/style_widgets.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.label,
    required this.icon,
    required this.fieldName,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;
  final String label, fieldName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldName,
          style: globalSubTitle(14, Colors.black),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: textEditingController,
          cursorColor: Colors.amber,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              constraints: BoxConstraints(
                maxHeight: 60.h,
              ),
              labelText: label,
              labelStyle: const TextStyle(color: Colors.blue),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.amber, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 209, 209, 209), width: 2.0),
              ),
              prefixIcon: Icon(icon),
              prefixIconColor: Colors.black),
        ),
      ],
    );
  }
}
