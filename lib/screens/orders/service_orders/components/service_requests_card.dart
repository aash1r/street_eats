import '../../../../helpers/utils/export.dart';

class ServiceRequestsCard extends StatelessWidget {
  const ServiceRequestsCard(
      {super.key,
      required this.status,
      required this.serviceName,
      required this.color,
      required this.showButton,
      this.ontap,
      required this.txt});
  final String status;
  final String serviceName;
  final Color color;
  final bool showButton;
  final Function(String)? ontap;
  final String? txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap!(status);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppColors.grayColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ID #23243',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 6.h,
                      color: AppColors.blackColor.withOpacity(0.9)),
                ),
                Text(
                  'Sep 23, 2023',
                  style: AppDecoration.lightStyle(
                      fontFamily: 'Nunito',
                      fontSize: 5.h,
                      color: AppColors.blackColor.withOpacity(0.9)),
                )
              ],
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  serviceName,
                  style: AppDecoration.semiBoldStyle(
                      fontFamily: 'Nunito',
                      fontSize: 2.h,
                      color: AppColors.blackColor),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7), color: color),
                  child: Text(status,
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 6.h,
                          color: AppColors.blackColor)),
                )
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: Text(AppString.dummytext3 +
                        AppString.dummytext3 +
                        AppString.dummytext3 +
                        AppString.dummytext3))
              ],
            ),
            15.verticalSpace,
            if (showButton)
              CustomButton(
                // onTap: () {
                //   itemAddedToCartDialogue(context,
                //       title: 'Request Submitted',
                //       message:
                //           'Your request to release payment has\nbeen submitted successfully',
                //       actionText: 'Continue', onAction: () {
                //     Get.back();
                //   });
                // },
                gradient: AppColors.gradient,
                height: 22.h,
                title: txt ?? '',
                fontFamily: '',
                fontsize: 8.h,
                color: AppColors.whiteColor,
              )
          ],
        ),
      ),
    );
  }
}
