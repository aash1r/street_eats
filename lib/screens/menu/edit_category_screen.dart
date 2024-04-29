import 'dart:io';
import 'package:street_eats_vendor/helpers/functions/get_image_function.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/profile/components/image_selection_widget.dart';

class EditCategoryScreen extends StatefulWidget {
  const EditCategoryScreen({super.key});

  @override
  State<EditCategoryScreen> createState() => _EditCategoryScreenState();
}

class _EditCategoryScreenState extends State<EditCategoryScreen> {
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
                      'Category',
                      style: AppDecoration.mediumStyle(
                          fontFamily: 'Nunito',
                          fontSize: 11.h,
                          color: AppColors.blackColor),
                    ),
                    5.verticalSpace,
                    Text(
                      'Edit Category',
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
                    InputField(
                      heightt: 22.h,
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
                  ],
                )),
              ),
              CustomButton(
                onTap: () => Get.back(),
                height: 21.h,
                title: 'Add Now',
                fontFamily: 'Nunito',
                fontsize: 8.5.h,
                color: AppColors.whiteColor,
                gradient: AppColors.gradient,
              )
            ],
          ).paddingAll(20),
        ));
  }
}
