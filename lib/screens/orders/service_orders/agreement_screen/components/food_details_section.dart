import 'package:street_eats_vendor/helpers/utils/export.dart';

Widget foodDetailsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Food Details',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Full Menu',
      ),
      5.verticalSpace,
      const Divider(),
      5.verticalSpace,
      Text(
        'Partial Menu',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 6.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Main Dish',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Amount',
      ),
      5.verticalSpace,
      InputField(
        isPassword: false,
        hint: 'Extra Details..',
        heightt: 35.h,
        maxlines: 6,
      ),
      5.verticalSpace,
      const Divider(),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Side Dish',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Amount',
      ),
      5.verticalSpace,
      InputField(
        isPassword: false,
        hint: 'Extra Details..',
        heightt: 35.h,
        maxlines: 6,
      ),
      5.verticalSpace,
      const Divider(),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Drink',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Amount',
      ),
      5.verticalSpace,
      InputField(
        isPassword: false,
        hint: 'Extra Details..',
        heightt: 35.h,
        maxlines: 6,
      ),
      5.verticalSpace,
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Add New Menu',
            style:
                TextStyle(color: Color(0xffA044FE), fontWeight: AppColors.bold),
          )
        ],
      ),
      5.verticalSpace,
      Text(
        'Other Notes',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        isPassword: false,
        hint: 'Details..',
        heightt: 35.h,
        maxlines: 6,
      ),
      5.verticalSpace,
      Text(
        'Amount Due',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: '\$ 600',
      ),
      5.verticalSpace,
      const Text(
        '(Thank you for your business. Please make your payment at this time.)',
        style: TextStyle(color: Color(0xffFF0E0E), fontWeight: AppColors.bold),
      ),
    ],
  );
}
