// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:street_eats_vendor/helpers/utils/export.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final width;
  final height;
  final gradient;
  final colorr;
  final backColor;
  final Function()? onTap;
  final String fontFamily;
  final double fontsize;
  final Color color;
  const CustomButton(
      {super.key,
      this.onTap,
      required this.title,
      this.width,
      this.height,
      this.gradient,
      this.colorr,
      this.backColor,
      required this.fontFamily,
      required this.fontsize,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backColor,
          gradient: gradient,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(title,
                  style: AppDecoration.mediumStyle(
                      fontFamily: fontFamily, fontSize: fontsize, color: color))
              .paddingOnly(left: 6, right: 6),
        ),
      ),
    );
  }
}
