import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/auth/signup_screen.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import '../../helpers/utils/export.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static const routeName = '/login';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.appBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            12.verticalSpace,
            Center(
              child: Image.asset(
                AppAssets.appLogo,
              ),
            ),
            20.verticalSpace,
            Text(
              "Welcome Vendor!",
              style: AppDecoration.lightStyle(
                  fontFamily: 'Nexa',
                  fontSize: 24,
                  color: AppColors.blackColor),
            ),
            2.verticalSpace,
            Text(
              "Login to continue",
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  color: AppColors.blackColor.withOpacity(0.8)),
            ),
            10.verticalSpace,
            Row(
              children: [
                Container(
                  width: 104.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: AppColors.purpleColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            InputField(
              heightt: 22.h,
              controller: _emailController,
              widthh: double.infinity,
              isPassword: false,
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  6.horizontalSpace,
                  Image.asset(
                    AppAssets.emailIcon,
                    fit: BoxFit.scaleDown,
                    color: AppColors.grayColor,
                  ),
                  20.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLine),
                ],
              ),
              hint: "info@loremipsum.com",
            ),
            5.h.verticalSpace,
            InputField(
              heightt: 22.h,
              controller: _passwordController,
              widthh: double.infinity,
              isPassword: true,
              hint: "Enter your credentials",
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  6.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      AppColors.grayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  20.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLine),
                ],
              ),
            ),
            7.verticalSpace,
            Row(
              children: [
                CustomCheckBox(
                  isChecked: (val) {
                    // print(val);
                  },
                  shape: BoxShape.circle,
                  height: 7.h,
                  width: 30.w,
                  gradient: AppColors.gradient,
                ),
                8.horizontalSpace,
                Text(
                  'Remember Me',
                  style: AppDecoration.mediumStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                ),
                const Spacer(),
                Text(
                  'Forget Password?',
                  style: AppDecoration.mediumStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                )
              ],
            ),
            14.verticalSpace,
            CustomButton(
                onTap: () => changePage(HomeScreen.routeName),
                gradient: AppColors.gradient,
                height: 22.h,
                title: 'Login',
                fontFamily: 'Nunito',
                fontsize: 18,
                color: AppColors.whiteColor),
            13.verticalSpace,
            Center(
              child: Text(
                "Or Login With",
                style: TextStyle(fontSize: 7.h),
                textAlign: TextAlign.center,
              ),
            ),
            13.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(AppAssets.facebookIcon),
                  SvgPicture.asset(AppAssets.gmailIcon),
                  SvgPicture.asset(AppAssets.twitterIcon),
                  SvgPicture.asset(AppAssets.instagramIcon),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => changePage(SignupScreen.routeName),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 5.h),
                  ),
                  Text(
                    " Signup",
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
