import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> getImage(
    BuildContext context, Function(File?) onImageSelected) async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    onImageSelected(File(pickedFile.path));
  } else {
    // print('No image selected.');
  }
}
