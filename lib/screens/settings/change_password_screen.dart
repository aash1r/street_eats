// ignore_for_file: no_leading_underscores_for_local_identifiers
import '../../helpers/utils/export.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static const routeName = 'change-password-screen';

  @override
  Widget build(BuildContext context) {
    final _existingPasswordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();
    final _newPasswordController = TextEditingController();

    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
            ),
          ),
        ),
        body: Column(
          children: [
            InputField(
              controller: _existingPasswordController,
              isPassword: true,
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  10.w.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      AppColors.grayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  50.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
              hint: "Existing Passsword",
            ),
            10.verticalSpace,
            InputField(
              controller: _confirmPasswordController,
              isPassword: true,
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  10.w.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      AppColors.grayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  50.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
              hint: "New Password",
            ),
            10.verticalSpace,
            InputField(
              controller: _newPasswordController,
              widthh: double.infinity,
              isPassword: true,
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  10.w.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.lockIcon,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                      AppColors.grayColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  50.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
              hint: "Confirm New Password",
            ),
            const Spacer(),
            CustomButton(
              title: 'Change',
              onTap: () {
                Get.back();
              },
              gradient: AppColors.gradient,
              fontFamily: 'Nunito',
              fontsize: 8.h,
              color: AppColors.whiteColor,
              height: 22.h,
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
