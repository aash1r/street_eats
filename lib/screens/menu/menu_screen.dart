import 'dart:io';
import 'package:street_eats_vendor/helpers/functions/get_image_function.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import 'package:street_eats_vendor/screens/profile/components/image_selection_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  File? image;

  void updateImage(File? newImage) {
    setState(() {
      image = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.secondaryBg), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: Get.height * 0.15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Menu',
                        style: AppDecoration.mediumStyle(
                            fontFamily: 'Nunito',
                            fontSize: 9.h,
                            color: AppColors.blackColor),
                      ),
                      5.verticalSpace,
                      Text(
                        'Add your menu',
                        style: AppDecoration.mediumStyle(
                            fontFamily: 'Nunito',
                            fontSize: 7.h,
                            color: AppColors.blackColor),
                      ),
                      10.verticalSpace,
                      Container(
                        height: 2.h,
                        width: 84.w,
                        decoration: BoxDecoration(
                            color: AppColors.purpleColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      10.verticalSpace,
                      ImageSelectionWidget(
                        onPressed: () {
                          getImage(context, updateImage);
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppAssets.uploadIcon,
                              colorFilter: const ColorFilter.mode(
                                Colors.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                            const Text(
                              'Upload Photo',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Name",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.cuisineIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Price",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.callIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Discount",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.callIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      5.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Remove',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 7.h,
                                color: AppColors.blackColor),
                          )
                        ],
                      ),
                      5.verticalSpace,
                      ImageSelectionWidget(
                        onPressed: () {
                          getImage(context, updateImage);
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppAssets.uploadIcon,
                              colorFilter: const ColorFilter.mode(
                                Colors.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                            const Text(
                              'Upload Photo',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Name",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.callIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Price",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.callIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      InputField(
                        heightt: 30.h,
                        isPassword: false,
                        hint: "Discount",
                        prefixIcon: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.callIcon,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.grayColor.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            ),
                            20.w.horizontalSpace,
                            SvgPicture.asset(AppAssets.dottedLineIcon),
                          ],
                        ),
                      ),
                      5.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(AppAssets.addOperationIcon),
                          15.horizontalSpace,
                          Text(
                            'Add More',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 6.5.h,
                                color: AppColors.blackColor),
                          )
                        ],
                      ),
                      5.verticalSpace,
                      CustomButton(
                        onTap: () {
                          secondaryDialogue(context,
                              title: 'All Done',
                              message:
                                  'Please wait until admin accept\nyour request',
                              actionText: 'Continue', onAction: () {
                            Get.to(() => const HomeScreen());
                          });
                        },
                        height: 21.h,
                        title: 'Confirm',
                        fontFamily: 'Nunito',
                        fontsize: 8.5.h,
                        color: AppColors.whiteColor,
                        gradient: AppColors.gradient,
                      )
                    ],
                  ).paddingAll(20),
                ),
              ),
            ],
          ),
        ));
  }
}
