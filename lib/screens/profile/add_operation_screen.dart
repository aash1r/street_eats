import 'package:flutter/cupertino.dart';
import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/helpers/widgets/container_selection_row.dart';
import 'package:street_eats_vendor/screens/profile/edit_operation_screen.dart';

class AddOperationScreen extends StatefulWidget {
  const AddOperationScreen({super.key});
  static const routeName = 'add-operations-screen';

  @override
  State<AddOperationScreen> createState() => _AddOperationScreenState();
}

class _AddOperationScreenState extends State<AddOperationScreen> {
  bool operationTimings = false;

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
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.12,
            ),
            Text(
              'Add Operation Time Setting',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 10.h,
                  color: AppColors.blackColor),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Open Full Time',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                ),
                10.horizontalSpace,
                SizedBox(
                  child: Transform.scale(
                    scale: 1.5.r,
                    child: CupertinoSwitch(
                      activeColor: const Color(0xffA044FE),
                      value: !operationTimings,
                      onChanged: (value) {
                        setState(() {
                          operationTimings = operationTimings;
                        });
                      },
                    ),
                  ),
                ),
                Text(
                  'Open ',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                ),
                Transform.scale(
                  scale: 1.5.r,
                  child: CupertinoSwitch(
                    activeColor: const Color(0xffA044FE),
                    value: operationTimings,
                    onChanged: (value) {
                      setState(() {
                        operationTimings = !operationTimings;
                      });
                    },
                  ),
                ),
              ],
            ),
            5.verticalSpace,
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerSelectionRow(
                    containerTexts: [
                      'Sun',
                      'Mon',
                      'Tue',
                      'Wed',
                      'Thur',
                      'Fri',
                      'Sat'
                    ],
                    right: 10,
                  ),
                ],
              ),
            ),
            5.verticalSpace,
            Row(
              children: [
                Text(
                  'Open Time',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                ),
                50.horizontalSpace,
                Text(
                  'Close Time',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.h,
                      color: AppColors.blackColor),
                ),
                const Spacer(),
                CustomButton(
                  height: 11.h,
                  title: 'Add Time',
                  fontFamily: 'Nunito',
                  fontsize: 5.h,
                  color: Colors.white,
                  gradient: AppColors.gradient,
                )
              ],
            ),
            5.verticalSpace,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    '00:00',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 6.h,
                        color: AppColors.blackColor),
                  ),
                  120.horizontalSpace,
                  Text(
                    '04:00',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 6.h,
                        color: AppColors.blackColor),
                  ),
                  const Spacer(),
                  CustomButton(
                    height: 11.h,
                    title: 'Remove',
                    fontFamily: 'Nunito',
                    fontsize: 5.h,
                    color: Colors.white,
                    gradient: AppColors.gradient,
                  ),
                  20.horizontalSpace,
                  CustomButton(
                    onTap: () => changePage(EditOperationScreen.routeName),
                    height: 11.h,
                    title: 'Edit',
                    fontFamily: 'Nunito',
                    fontsize: 5.h,
                    color: Colors.black,
                    gradient: AppColors.backgroundGradient,
                  )
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              onTap: () => Get.back(),
              height: 21.h,
              title: 'Save',
              fontFamily: 'Nunito',
              fontsize: 8.h,
              color: Colors.white,
              gradient: AppColors.gradient,
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
