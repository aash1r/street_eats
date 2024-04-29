import '../../../../../helpers/utils/export.dart';

Widget contactDetailsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Contact Details (Business Info)',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Enter your Business name',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Enter your Contact name',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Billing Address',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Phone Number',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Email Address',
      ),
      5.verticalSpace,
      Text(
        'Contact Details (Customer Info)',
        style: AppDecoration.semiBoldStyle(
            fontFamily: 'Nunito', fontSize: 7.5.h, color: AppColors.blackColor),
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Enter your full name',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Enter your email address',
      ),
      5.verticalSpace,
      InputField(
        heightt: 25.h,
        isPassword: false,
        hint: 'Enter your phone number',
      ),
    ],
  );
}
