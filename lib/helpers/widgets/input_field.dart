// ignore_for_file: camel_case_extensions, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:street_eats_vendor/controllers/input_field_controller.dart';
import '../styles/app_colors.dart';

class InputField extends StatelessWidget {
  final submit;
  final widthh;
  double? labelfont;
  void Function()? onTap;
  bool readOnly;
  String? text;
  final controller;
  final suffixIcon;
  final validator;
  final isPassword;
  final prefixIcon;
  final hint;
  double? fontsize;
  final colors;
  var icon;
  final heightt;
  final maxlines;
  final fborder;
  final eborder;
  final keyboard;
  bool? isEnabled;
  FocusNode? focus;
  InputField(
      {super.key,
      this.readOnly = false,
      this.labelfont,
      this.submit,
      this.colors,
      this.fontsize,
      this.text,
      this.controller,
      this.hint,
      this.validator,
      this.icon,
      this.suffixIcon,
      this.widthh,
      required this.isPassword,
      this.prefixIcon,
      this.heightt,
      this.maxlines,
      this.fborder,
      this.eborder,
      this.keyboard,
      this.focus,
      this.isEnabled,
      this.onTap});

  final InputFieldController fieldcontroller = Get.put(InputFieldController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputFieldController>(
      builder: (fieldcontroller) {
        return SizedBox(
          width: widthh,
          height: heightt,
          child: TextFormField(
            readOnly: readOnly,
            controller: controller,
            onTap: onTap,
            onTapOutside: (_) => focus?.unfocus(),
            focusNode: focus,
            maxLines: maxlines ?? 1,
            obscureText: isPassword == true ? fieldcontroller.isObes : false,
            cursorColor: Colors.transparent,
            keyboardType: keyboard,
            style: TextStyle(
              fontSize: 8.h,
              color: AppColors.blackColor.withOpacity(0.7),
              fontWeight: AppColors.medium,
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              filled: true,
              fillColor: AppColors.whiteColor,
              prefixIcon: prefixIcon,
              labelText: text,
              hintText: hint,
              labelStyle: TextStyle(
                fontSize: 12.sp,
              ),
              suffixIcon: isPassword == true
                  ? GestureDetector(
                      onTap: () {
                        fieldcontroller.toggleObesecure();
                      },
                      child: Icon(
                        fieldcontroller.isObes == true
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                        color: (isEnabled ?? true)
                            ? AppColors.grayColor
                            : AppColors.textColor,
                        size: 20,
                      ),
                    )
                  : suffixIcon,
              hintStyle: TextStyle(
                  color: AppColors.blackColor.withOpacity(.9.r),
                  fontSize: 7.h,
                  fontFamily: 'Nunito',
                  fontWeight: AppColors.medium),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.blackColor.withOpacity(.2.r), width: 2.w),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grayColor, width: 1.w),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.grayColor.withOpacity(.2.r), width: 1.w),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.blackColor.withOpacity(.2.r), width: 1.w),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
