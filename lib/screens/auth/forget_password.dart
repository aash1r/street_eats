import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/auth/verification_screen.dart';

import '../../helpers/utils/export.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  static const routeName = '/forget-password-screen';
  final _emailController = TextEditingController();

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
          surfaceTintColor: Colors.transparent,
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
            Image.asset(
              AppAssets.appLogo,
              height: 101.h,
            ),
            5.verticalSpace,
            Text(
              "Forget Password!",
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 10.h,
                  color: AppColors.blackColor),
            ),
            5.verticalSpace,
            Text(
              "Enter your email address",
              style: AppDecoration.lightStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor),
            ),
            10.verticalSpace,
            Row(
              children: [
                Container(
                  width: 84.w,
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
              heightt: 30.h,
              controller: _emailController,
              isPassword: false,
              hint: 'info@loremipsum.com',
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  80.w.horizontalSpace,
                  Image.asset(
                    AppAssets.emailIcon,
                    fit: BoxFit.scaleDown,
                  ),
                  40.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
            ),
            20.verticalSpace,
            CustomButton(
              height: 21.h,
              gradient: AppColors.gradient,
              title: "Continue",
              onTap: () => changePage(VerificationScreen.routeName),
              fontFamily: 'Nunito',
              fontsize: 9.h,
              color: AppColors.whiteColor,
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
