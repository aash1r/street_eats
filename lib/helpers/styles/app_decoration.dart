import 'package:flutter/material.dart';

class AppDecoration {
  static TextStyle boldStyle(
      {required fontFamily, required double fontSize, required Color color}) {
    return TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily);
  }

  static TextStyle semiBoldStyle(
      {required fontFamily, required double fontSize, required Color color}) {
    return TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color);
  }

  static TextStyle mediumStyle(
      {required fontFamily, required double fontSize, required Color color}) {
    return TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color);
  }

  static TextStyle lightStyle(
      {required fontFamily, required double fontSize, required Color color}) {
    return TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color);
  }
}
