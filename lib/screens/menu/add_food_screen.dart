import 'dart:io';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:street_eats_vendor/helpers/functions/get_image_function.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/menu/main_menu_screen.dart';
import 'package:street_eats_vendor/screens/profile/components/image_selection_widget.dart';
import '../../helpers/widgets/multi_select_dialog_field.dart';

class AddFoodScreen extends StatefulWidget {
  const AddFoodScreen({super.key});

  @override
  State<AddFoodScreen> createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  File? image;

  void updateImage(File? newImage) {
    setState(() {
      image = newImage;
    });
  }

  final List<MultiSelectItem<String>> _items = [
    MultiSelectItem('Zinger Burger', 'Zinger Burger'),
    MultiSelectItem('Beef Burger', 'Beef Burger'),
    MultiSelectItem('Cheese Burger', 'Cheese Burger')
  ];
  List<String> selectedItems = [];

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
                        'Food',
                        style: AppDecoration.mediumStyle(
                            fontFamily: 'Nunito',
                            fontSize: 11.h,
                            color: AppColors.blackColor),
                      ),
                      5.verticalSpace,
                      Text(
                        'Add New Food',
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
                      InputField(
                        heightt: 22.h,
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
                      multiSelectDialogField(context, onConfirm: (values) {
                        setState(() {
                          selectedItems = values;
                        });
                      }, text: 'Select Category', items: _items),
                      10.verticalSpace,
                      InputField(
                        heightt: 22.h,
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
                      10.verticalSpace,
                      multiSelectDialogField(context, onConfirm: (values) {
                        setState(() {
                          selectedItems = values;
                        });
                      }, text: 'Ingredients', items: _items),
                      10.verticalSpace,
                      CustomButton(
                        onTap: () => Get.to(() => const MainMenuScreen()),
                        height: 21.h,
                        title: 'Add Now',
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
