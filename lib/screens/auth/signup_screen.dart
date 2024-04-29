import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/auth/login_screen.dart';
import 'package:street_eats_vendor/screens/auth/verification_screen.dart';
import '../../helpers/utils/export.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AppAssets.appBg))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.keyboard_backspace_outlined,
                color: AppColors.themeColor,
              )),
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
              "Signup",
              style: AppDecoration.lightStyle(
                  fontFamily: 'Nexa',
                  fontSize: 24,
                  color: AppColors.blackColor),
            ),
            3.verticalSpace,
            Text(
              "Create your account",
              style: AppDecoration.lightStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  color: AppColors.blackColor),
            ),
            5.h.verticalSpace,
            Container(
              height: 2.h,
              width: 74.w,
              decoration: BoxDecoration(
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            5.h.verticalSpace,
            InputField(
              heightt: 22.h,
              isPassword: false,
              hint: 'Email Address',
              // prefixIcon: Image.asset(
              //   AppAssets.lockIcon,
              // ),
            ),
            5.h.verticalSpace,
            InputField(
              heightt: 22.h,
              isPassword: true,
              hint: 'Password',
              // prefixIcon: Image.asset(
              //   AppAssets.lockIcon,
              // ),
            ),
            5.h.verticalSpace,
            InputField(
              heightt: 22.h,
              isPassword: true,
              hint: 'Confirm Password ',
              // prefixIcon: Image.asset(AppAssets.lockIcon),
            ),
            3.h.verticalSpace,
            Row(
              children: [
                CustomCheckBox(
                  isChecked: (val) {},
                  height: 7.h,
                  width: 25.w,
                  shape: BoxShape.rectangle,
                  gradient: AppColors.gradient,
                ),
                10.horizontalSpace,
                const Text(
                  'I agree to the Terms of Service & Privacy Policy',
                  // style: AppTextStyle.headingStyle2(14.h),
                ),
              ],
            ),
            10.verticalSpace,
            CustomButton(
              title: "Sign Up",
              fontFamily: 'Nunito',
              fontsize: 18,
              height: 22.h,
              color: AppColors.whiteColor,
              gradient: AppColors.gradient,
              onTap: () => changePage(VerificationScreen.routeName),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => changePage(LoginScreen.routeName),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 5.h),
                  ),
                  Text(
                    " Login",
                    style: TextStyle(
                        fontSize: 6.h,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purpleColor),
                  )
                ],
              ),
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
