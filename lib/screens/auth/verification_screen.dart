import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/auth/update_password_screen.dart';
import 'package:street_eats_vendor/screens/profile/create_profile_screen.dart';

import '../../helpers/utils/export.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static const routeName = 'verification-screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.appBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: AppColors.themeColor,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppAssets.appLogo,
              ),
            ),
            20.verticalSpace,
            Text(
              "Verification Code",
              style: AppDecoration.lightStyle(
                  fontFamily: 'Nexa',
                  fontSize: 24,
                  color: AppColors.blackColor),
            ),
            4.verticalSpace,
            Text(
              "Enter the 6 digital verification code received\non your email",
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                  color: AppColors.blackColor),
            ),
            10.h.verticalSpace,
            Row(
              children: [
                Container(
                  width: 74.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: AppColors.purpleColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: OTPTextField(
                spaceBetween: 2,
                onChanged: (value) {},
                onCompleted: (value) {},
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.6231),
                  fontSize: 10.h,
                  fontWeight: AppColors.semiBold,
                ),
                width: Get.width,
                fieldWidth: 50,
                length: 6,
                outlineBorderRadius: 20.r,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: AppColors.whiteColor,
                  disabledBorderColor: AppColors.whiteColor,
                  focusBorderColor: AppColors.themeColor,
                  enabledBorderColor: AppColors.whiteColor,
                  borderColor: AppColors.whiteColor,
                  errorBorderColor: AppColors.whiteColor,
                ),
              ),
            ),
            40.verticalSpace,
            GestureDetector(
                onTap: () => changePage(UpdatePasswordScreen.routeName),
                child: const Center(child: CircularCountDownWidget())),
            const Spacer(),
            GestureDetector(
              onTap: () => changePage(CreateProfileScreen.routeName),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Code didn't received? ",
                    style: TextStyle(fontSize: 5.h),
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                      fontSize: 6.h,
                      fontWeight: AppColors.bold,
                      color: AppColors.purpleColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
