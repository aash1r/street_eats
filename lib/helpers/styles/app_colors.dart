import 'package:flutter/material.dart';

class AppColors {
  static const themeColor = Color(0xff1C1955);
  static const purpleColor = Color(0xff552C9E);
  static const textColor = Color(0xff191919);
  static const whiteColor = Colors.white;
  static const grayColor = Color(0xffC5C4C9);
  static const contentTextColor = Color(0xff667080);
  static const blackColor = Colors.black;
  static const gradient = LinearGradient(
    colors: [
      Color(0xffA044FE),
      Color(0xff1C1955),
    ],
  );
  static const backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    stops: [.15, .85],
    colors: [
      Color.fromARGB(255, 252, 243, 228),
      Color.fromARGB(255, 242, 229, 211),
    ],
  );
  static const extraBold = FontWeight.w900;
  static const bold = FontWeight.bold;
  static const semiBold = FontWeight.w700;
  static const lightBold = FontWeight.w600;
  static const medium = FontWeight.w500;
  static const light = FontWeight.w300;
}
