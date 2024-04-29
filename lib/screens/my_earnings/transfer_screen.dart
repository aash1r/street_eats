import 'package:street_eats_vendor/helpers/utils/export.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.keyboard_backspace_rounded)),
          centerTitle: true,
          title: Text(
            'Transfer',
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 10.h,
                color: AppColors.blackColor),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(
              heightt: 22.h,
              isPassword: false,
              hint: "Stripe",
              prefixIcon: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    color: AppColors.grayColor,
                  ),
                  20.w.horizontalSpace,
                  SvgPicture.asset(AppAssets.dottedLineIcon),
                ],
              ),
              suffixIcon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grayColor,
                size: 7.h,
              ),
            ),
            10.verticalSpace,
            Text(
              'Enter the amount of Transfer',
              style: AppDecoration.semiBoldStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor),
            ),
            5.verticalSpace,
            InputField(
              heightt: 22.h,
              isPassword: false,
              hint: "\$ 562.00",
            ),
            5.verticalSpace,
            Text(
              'After transfer amount \$6.00',
              style: AppDecoration.semiBoldStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor),
            ),
            const Spacer(),
            CustomButton(
              onTap: () {
                secondaryDialogue(context,
                    title: 'Transfer Successful!',
                    message:
                        'You have successfully transfer\n\$228 in your account',
                    actionText: 'OK',
                    onAction: () => Get.back());
              },
              height: 21.h,
              title: 'Transfer',
              fontFamily: 'Nunito',
              fontsize: 9.h,
              color: AppColors.whiteColor,
              gradient: AppColors.gradient,
            )
          ],
        ).paddingAll(20),
      ),
    );
  }
}
