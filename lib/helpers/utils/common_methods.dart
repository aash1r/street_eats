import 'dart:ui';
import 'package:street_eats_vendor/helpers/widgets/announcement_or_promotion_selection.dart';
import 'package:street_eats_vendor/screens/announcements_and_promotions/announcement_screen.dart';
import 'package:street_eats_vendor/screens/announcements_and_promotions/promotion_screen.dart';
import 'export.dart';

Future<dynamic> primaryDialogue(BuildContext context,
    {required String? title,
    required String? message,
    required String? actionText1,
    required String? actionText2,
    required Function()? onFirstAction,
    required Function()? onSecondAction}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.r, sigmaY: 10.r),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          iconPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: Colors.transparent,
          actions: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    backgroundBlendMode: BlendMode.darken,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      10.verticalSpace,
                      Text(
                        textAlign: TextAlign.center,
                        title ?? "",
                        style: AppDecoration.semiBoldStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.h,
                            color: AppColors.blackColor),
                      ),
                      11.verticalSpace,
                      Text(
                        message ?? "",
                        style: TextStyle(
                          fontSize: 7.h,
                          color: AppColors.themeColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      10.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: onFirstAction,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 10),
                              decoration: BoxDecoration(
                                gradient: AppColors.gradient,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  actionText1 ?? "",
                                  style: TextStyle(
                                      fontSize: 8.h,
                                      fontWeight: AppColors.medium,
                                      color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onSecondAction,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.grayColor.withOpacity(.2.r),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  actionText2 ?? '',
                                  style: TextStyle(
                                      fontSize: 8.h,
                                      fontWeight: AppColors.medium,
                                      color: AppColors.themeColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Future<dynamic> secondaryDialogue(BuildContext context,
    {required String? title,
    required String? message,
    required String? actionText,
    required Function()? onAction}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.r, sigmaY: 10.r),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          iconPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: Colors.transparent,
          actions: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  7.verticalSpace,
                  Text(
                    title ?? "",
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 10.h,
                        color: AppColors.blackColor),
                  ),
                  6.verticalSpace,
                  Text(
                    message ?? "",
                    style: TextStyle(
                      fontSize: 7.h,
                      fontFamily: 'Nunito',
                      color: AppColors.themeColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  10.verticalSpace,
                  GestureDetector(
                    onTap: onAction,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: AppColors.purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          actionText ?? "",
                          style: TextStyle(
                              fontSize: 7.h,
                              fontFamily: 'Nunito',
                              fontWeight: AppColors.medium,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Future<dynamic> announcementDialogue(BuildContext context) {
  bool optionSelected = false;
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.r, sigmaY: 10.r),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          iconPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: Colors.transparent,
          actions: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  10.verticalSpace,
                  Text(
                    textAlign: TextAlign.center,
                    "Do you want to make\nan announcement or\npromotions?",
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 12.h,
                        color: AppColors.blackColor),
                  ),
                  11.verticalSpace,
                  AnnouncementOrPromotionSelection(
                    onselectionChanged: (bool value) {
                      optionSelected = value;
                    },
                  ),
                  10.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          optionSelected
                              ? Get.to(() => const AnnouncementScreen())
                              : Get.to(() => const PromotionScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 10),
                          decoration: BoxDecoration(
                            gradient: AppColors.gradient,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 8.h,
                                  fontWeight: AppColors.medium,
                                  color: AppColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.grayColor.withOpacity(.2.r),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 8.h,
                                  fontWeight: AppColors.medium,
                                  color: AppColors.themeColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
