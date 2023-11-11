// ignore: unused_import
import 'package:flutter/material.dart';

class MyColors {
  static LinearGradient backGround(
    List<Color> colors,
    Alignment begin,
    Alignment end,
  ) {
    return LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
    );
  }

  static const pink = Color(0xffBD5A85);
  static const green = Color(0xff12B76A);
  static const black = Color(0x00000000);
  static const fadedblack = Color(0xff6C727F);
  // final formborder = const Color(0xff605960).withOpacity(.5);
  static const formborder = Color(0xff605960);
  static const lightgrey = Color.fromRGBO(158, 158, 158, 0.137);
  static const white = Color(0xffffffff);
  static const offwhite = Color.fromARGB(240, 243, 243, 243);
  static const pending = Color(0xffFEE5B5);
  static const splashLogin = Color(0xff191C33);
}
