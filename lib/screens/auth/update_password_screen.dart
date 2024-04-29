import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/auth/login_screen.dart';
import '../../helpers/utils/export.dart';

class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({super.key});
  static const routeName = '/update-password-screen';

  final passController = TextEditingController();

  final confirmPassController = TextEditingController();

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
              controller: passController,
              isPassword: true,
              hint: '*******9',
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  80.w.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
                    fit: BoxFit.scaleDown,
                  ),
                  40.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
            ),
            10.verticalSpace,
            InputField(
              heightt: 30.h,
              controller: confirmPassController,
              hint: '*******9',
              isPassword: true,
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  80.w.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
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
              title: "Update",
              onTap: () => changePage(LoginScreen.routeName),
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
