import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/helpers/widgets/time_picker_dropdown.dart';

import '../../helpers/widgets/multi_select_dialog_field.dart';
import '../home/home_screen.dart';

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({super.key});

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  final List<MultiSelectItem<String>> _items = [
    MultiSelectItem('Chinese Cuisine', 'Chinese Cuisine'),
    MultiSelectItem('French Cuisine', 'French'),
    MultiSelectItem('English Cuisine', 'Englishh')
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
          leading: const Icon(
            Icons.keyboard_backspace_rounded,
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Announcement',
                    style: AppDecoration.mediumStyle(
                        fontFamily: 'Nunito',
                        fontSize: 9.h,
                        color: AppColors.blackColor),
                  ),
                  5.verticalSpace,
                  Text(
                    'Announcement',
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
                    hint: "Description",
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
                    hint: "Location",
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
                  multiSelectDialogField(context, onConfirm: (values) {
                    setState(() {
                      selectedItems = values;
                    });
                  }, text: 'Cusine Types', items: _items),
                  10.verticalSpace,
                  const TimePickerDropDown(),
                  40.verticalSpace,
                  CustomButton(
                    onTap: () {
                      secondaryDialogue(context,
                          title: 'Announcement',
                          message:
                              'your announcement has been\npushed to admin.',
                          actionText: 'Continue', onAction: () {
                        Get.to(() => const HomeScreen());
                      });
                    },
                    height: 21.h,
                    title: 'Push to Super Admin',
                    fontFamily: 'Nunito',
                    fontsize: 8.5.h,
                    color: AppColors.whiteColor,
                    gradient: AppColors.gradient,
                  )
                ],
              ).paddingAll(20)
            ],
          ),
        ),
      ),
    );
  }
}
