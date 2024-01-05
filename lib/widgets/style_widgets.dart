import 'package:flutter/material.dart';

TextStyle textButton() {
  return const TextStyle(
      color: Colors.amber, fontSize: 16, fontWeight: FontWeight.w600);
}

TextStyle textTitle() {
  return const TextStyle(
      color: Color.fromARGB(255, 63, 101, 225),
      fontSize: 20,
      fontWeight: FontWeight.w700);
}

TextStyle textDesc() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}

TextStyle globalTitle(double ukuran) {
  return TextStyle(
      color: Colors.black, fontSize: ukuran, fontWeight: FontWeight.w600);
}

TextStyle globalSubTitle(double ukuran, Color? warna) {
  return TextStyle(color: warna, fontSize: ukuran);
}
