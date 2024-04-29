import 'package:street_eats_vendor/helpers/widgets/time_picker_dropdown.dart';
import '../../helpers/utils/export.dart';

class EditOperationScreen extends StatelessWidget {
  const EditOperationScreen({super.key});
  static const routeName = 'edit-operation-screen';

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
              'Edit Operation Time Setting',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 10.h,
                  color: AppColors.blackColor),
            ),
            10.verticalSpace,
            SizedBox(
              width: Get.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Open Time',
                    style: AppDecoration.lightStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  10.horizontalSpace,
                  Text(
                    'Close Time',
                    style: AppDecoration.lightStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                ],
              ),
            ),
            5.verticalSpace,
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TimePickerDropDown(), TimePickerDropDown()]),
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
