import 'dart:io';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/helpers/functions/get_image_function.dart';
import 'package:street_eats_vendor/helpers/widgets/multi_select_dialog_field.dart';
import 'package:street_eats_vendor/screens/menu/menu_screen.dart';
import 'package:street_eats_vendor/screens/profile/add_operation_screen.dart';
import 'package:street_eats_vendor/screens/profile/components/image_selection_widget.dart';
import '../../helpers/utils/export.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({
    super.key,
  });
  static const routeName = 'create-profile-screen';

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final List<MultiSelectItem<String>> _items = [
    MultiSelectItem('Chinese Cuisine', 'Chinese Cuisine'),
    MultiSelectItem('French Cuisine', 'French'),
    MultiSelectItem('English Cuisine', 'Englishh')
  ];
  List<String> selectedItems = [];
  File? _image;

  void updateImage(File? newImage) {
    setState(() {
      _image = newImage;
    });
  }

  bool offeringServices = false;

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
                      child: _image != null
                          ? ClipOval(
                              child: Image.file(
                                _image!,
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
                      "Create Profile",
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12.h,
                          color: AppColors.blackColor),
                    ),
                    2.h.verticalSpace,
                    Text(
                      "Complete your profile",
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
                      heightt: 30.h,
                      isPassword: false,
                      hint: "Business Name",
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
                      heightt: 30.h,
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
                      heightt: 30.h,
                      isPassword: false,
                      hint: "Location",
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
                    multiSelectDialogField(context, onConfirm: (values) {
                      setState(() {
                        selectedItems = values;
                      });
                    }, text: 'Cusine Types', items: _items),
                    10.verticalSpace,
                    InputField(
                      heightt: 30.h,
                      isPassword: false,
                      hint: "Current ID",
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
                      heightt: 30.h,
                      isPassword: false,
                      hint: "BIN#",
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
                    ImageSelectionWidget(
                      onPressed: () {
                        getImage(context, updateImage);
                      },
                      child: _image != null
                          ? ClipRect(
                              child: Image.file(
                                _image!,
                                width: 95,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.uploadIcon,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.grey,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const Text(
                                  'Business Licenses',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                    ),
                    10.verticalSpace,
                    ImageSelectionWidget(
                      onPressed: () {
                        getImage(context, updateImage);
                      },
                      child: _image != null
                          ? ClipRect(
                              child: Image.file(
                                _image!,
                                width: 95,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.uploadIcon,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.grey,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const Text(
                                  'Insurance',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Offering Services',
                          style: AppDecoration.mediumStyle(
                              fontFamily: 'Nunito',
                              fontSize: 10.h,
                              color: AppColors.blackColor),
                        ),
                        GestureDetector(
                          onTap: () {
                            offeringServices = true;
                            setState(() {});
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: offeringServices
                                      ? AppColors.purpleColor
                                      : AppColors.grayColor),
                            ),
                            child: offeringServices
                                ? Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                        gradient: AppColors.gradient,
                                        shape: BoxShape.circle),
                                  )
                                : Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                          ),
                        ),
                        Text(
                          'Yes',
                          style: AppDecoration.mediumStyle(
                              fontFamily: 'Nunito',
                              fontSize: 9.h,
                              color: AppColors.blackColor),
                        ),
                        GestureDetector(
                          onTap: () {
                            offeringServices = false;
                            setState(() {});
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: !offeringServices
                                      ? AppColors.purpleColor
                                      : AppColors.grayColor),
                            ),
                            child: !offeringServices
                                ? Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                        gradient: AppColors.gradient,
                                        shape: BoxShape.circle),
                                  )
                                : Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                          ),
                        ),
                        Text(
                          'No',
                          style: AppDecoration.mediumStyle(
                              fontFamily: 'Nunito',
                              fontSize: 9.h,
                              color: AppColors.blackColor),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    GestureDetector(
                      onTap: () => changePage(AddOperationScreen.routeName),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(AppAssets.addOperationIcon),
                          15.horizontalSpace,
                          Text(
                            'Add Operational Timing',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 6.5.h,
                                color: AppColors.blackColor),
                          )
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    CustomButton(
                      onTap: () => Get.to(() => const MenuScreen()),
                      height: 21.h,
                      title: 'Next',
                      fontFamily: 'Nunito0',
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
