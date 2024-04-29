import 'package:flutter/material.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';

class DrawerScreenModel {
  Widget page;
  String text;
  String image;
  void Function()? onTap;
  DrawerScreenModel({
    required this.image,
    this.onTap,
    required this.page,
    required this.text,
  });
}
