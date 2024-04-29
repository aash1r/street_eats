import 'package:street_eats_vendor/helpers/utils/export.dart';

Widget eventDetailsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Event Details',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: '9 - 23 -2023',
      ),
      5.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputField(
            heightt: 25.h,
            widthh: Get.width * 0.42,
            isPassword: false,
            hint: 'Start Time',
          ),
          InputField(
            widthh: Get.width * 0.42,
            heightt: 25.h,
            isPassword: false,
            hint: 'End Time',
          ),
        ],
      ),
      5.verticalSpace,
      InputField(
        isPassword: false,
        hint: 'Extra Details..',
        heightt: 35.h,
        maxlines: 6,
      ),
      5.verticalSpace,
      const CustomDropDownButton(hint: 'Types of Catering', items: []),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Event Location / Address',
      ),
      5.verticalSpace,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputField(
            heightt: 25.h,
            widthh: Get.width * 0.42,
            isPassword: false,
            hint: 'Ocassion',
          ),
          InputField(
            widthh: Get.width * 0.42,
            heightt: 25.h,
            isPassword: false,
            hint: 'Cuisine Selection',
          ),
        ],
      ),
      5.verticalSpace,
      const CustomDropDownButton(hint: 'Event Type', items: []),
      5.verticalSpace,
      const CustomDropDownButton(hint: 'Expected Number of people', items: []),
    ],
  );
}
