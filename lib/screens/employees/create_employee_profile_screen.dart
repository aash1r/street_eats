import 'dart:io';
import 'package:street_eats_vendor/helpers/functions/get_image_function.dart';
import 'package:street_eats_vendor/screens/employees/employee_profile_screen.dart';
import '../../helpers/utils/export.dart';

class CreateEmployeeProfileScreen extends StatefulWidget {
  const CreateEmployeeProfileScreen({
    super.key,
  });

  @override
  State<CreateEmployeeProfileScreen> createState() =>
      _CreateEmployeeProfileScreenState();
}

class _CreateEmployeeProfileScreenState
    extends State<CreateEmployeeProfileScreen> {
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
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.secondaryBg,
          ),
        ),
      ),
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
                color: AppColors.whiteColor,
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 131,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 12.h),
                    child: Container(
                      height: 131.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4.w,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      child: image != null
                          ? ClipOval(
                              child: Image.file(
                                image!,
                                width: 95,
                                height: 115,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Image.asset(
                              AppAssets.dummyPorfileImg,
                              fit: BoxFit.contain,
                            ),
                    ),
                  ),
                ),
                Positioned(
                    left: 188.w,
                    bottom: -3.h,
                    child: GestureDetector(
                      onTap: () {
                        getImage(context, updateImage);
                      },
                      child: Container(
                        height: 90.r,
                        padding: EdgeInsets.all(10.r),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.w,
                            color: AppColors.purpleColor,
                          ),
                        ),
                        child: SvgPicture.asset(
                          AppAssets.cameraIcon,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ))
              ],
            ),
            2.h.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Employee Profile",
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12.h,
                          color: AppColors.blackColor),
                    ),
                    2.h.verticalSpace,
                    Text(
                      "Employee profile",
                      style: AppDecoration.mediumStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.5.h,
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
                    InputField(
                      heightt: 26.h,
                      isPassword: false,
                      hint: "Name",
                      prefixIcon: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAssets.userIcon,
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
                      heightt: 26.h,
                      isPassword: false,
                      hint: "Email",
                      prefixIcon: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.emailIcon,
                            fit: BoxFit.scaleDown,
                            color: AppColors.grayColor,
                          ),
                          20.w.horizontalSpace,
                          SvgPicture.asset(AppAssets.dottedLineIcon),
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    InputField(
                      heightt: 26.h,
                      isPassword: false,
                      hint: "Password",
                      prefixIcon: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAssets.lockIcon,
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
                      heightt: 26.h,
                      isPassword: false,
                      hint: "Phone Number",
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
                      heightt: 32.h,
                      isPassword: false,
                      hint: "Description",
                      prefixIcon: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAssets.userIcon,
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
                    20.verticalSpace,
                    CustomButton(
                      onTap: () {
                        Get.off(() => const EmployeeProfileScreen());
                      },
                      height: 21.h,
                      title: 'Create',
                      fontFamily: 'Nunito',
                      fontsize: 9.h,
                      color: AppColors.whiteColor,
                      gradient: AppColors.gradient,
                    )
                  ],
                ).paddingAll(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
