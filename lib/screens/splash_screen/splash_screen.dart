import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/helpers/styles/app_assets.dart';
import 'package:street_eats_vendor/helpers/styles/app_colors.dart';
import 'package:street_eats_vendor/helpers/styles/app_decoration.dart';
import 'package:street_eats_vendor/helpers/widgets/custom_button.dart';
import 'package:street_eats_vendor/screens/auth/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.splashBg), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AppAssets.appLogo,
            ),
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Welcome to Street Eats\nVendor!',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nexa', fontSize: 26, color: Colors.black),
                ),
                10.verticalSpace,
                CustomButton(
                  onTap: () => changePage(
                    LoginScreen.routeName,
                  ),
                  height: 22.h,
                  title: 'CONTINUE',
                  gradient: AppColors.gradient,
                  fontFamily: 'Nunito',
                  fontsize: 18,
                  color: AppColors.whiteColor,
                )
              ],
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
