// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'mysizes.dart';

class MyDecor {
  textstyle(
      {Color? fontcolor,
      double? fontsize,
      FontWeight? fontweight,
      double? letterspace,
      double? sentenceSpace}) {
    return TextStyle(
        letterSpacing: letterspace ?? 0,
        height: sentenceSpace ?? 1,
        color: fontcolor,
        fontSize: fontsize,
        fontFamily: 'Poppins',
        fontWeight: fontweight);
  }
}
