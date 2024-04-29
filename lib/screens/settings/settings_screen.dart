import 'package:flutter/cupertino.dart';
import 'package:street_eats_vendor/helpers/functions/change_page.dart';

import '../../helpers/utils/export.dart';
import 'change_password_screen.dart';
import 'components/settings_container.dart';
import 'privacy_policy_screen.dart';
import 'terms_and_condition_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const routeName = 'settings-screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushNotification = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: AppColors.themeColor,
            ),
          ),
          title: Text(
            'Settings',
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 9.h,
                color: AppColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 30.w, right: 20.w, top: 2, bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.whiteColor,
                  border: Border.all(
                    color: AppColors.grayColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.bellIcon,
                          height: 8.h,
                          color: AppColors.blackColor.withOpacity(.9.r),
                        ),
                        28.w.horizontalSpace,
                        SvgPicture.asset(
                          AppAssets.dottedLineIcon,
                          height: 10.h,
                        ),
                        20.w.horizontalSpace,
                        Text(
                          "Push Notifications",
                          style: TextStyle(
                            fontSize: 7.h,
                            fontFamily: 'Nunito',
                            color: AppColors.blackColor.withOpacity(.9.r),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Transform.scale(
                        scale: 1.5.r,
                        child: CupertinoSwitch(
                          activeColor: AppColors.purpleColor,
                          value: pushNotification,
                          onChanged: (value) {
                            setState(() {
                              pushNotification = !pushNotification;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              5.h.verticalSpace,
              GestureDetector(
                onTap: () => changePage(ChangePasswordScreen.routeName),
                child: SettingsContainer(
                  title: "Change Password",
                  image: AppAssets.lockIcon,
                  customHeight: 8.h,
                ),
              ),
              5.h.verticalSpace,
              GestureDetector(
                onTap: () => changePage(TermsConditionScreen.routeName),
                child: SettingsContainer(
                  title: "Terms & Conditions",
                  image: AppAssets.termsIcon,
                  customHeight: 8.h,
                ),
              ),
              5.h.verticalSpace,
              GestureDetector(
                onTap: () => changePage(PrivacyPolicyScreen.routeName),
                child: SettingsContainer(
                  title: "Privacy Policy",
                  image: AppAssets.privacyPolicyIcon,
                  customHeight: 8.h,
                ),
              ),
              5.h.verticalSpace,
              GestureDetector(
                onTap: () {
                  // deleteAccountDialogue(context);
                },
                child: SettingsContainer(
                  title: "Delete Account",
                  image: AppAssets.binIcon,
                  customHeight: 8.h,
                ),
              ),
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
