import 'package:street_eats_vendor/helpers/utils/export.dart';

// ignore: must_be_immutable
class OrderStatusCard extends StatefulWidget {
  OrderStatusCard({
    super.key,
    required this.newOrder,
    required this.status,
    required this.ontap,
  });
  String status;
  final bool newOrder;
  final void Function()? ontap;

  @override
  State<OrderStatusCard> createState() => _OrderStatusCardState();
}

class _OrderStatusCardState extends State<OrderStatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.h),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.grayColor),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Text(
                'Zinger Burger',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 7.h,
                    color: AppColors.blackColor),
              ),
              3.verticalSpace,
              const Text('Fast Food'),
              3.verticalSpace,
              Text(
                textAlign: TextAlign.center,
                '#123456',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              3.verticalSpace,
              widget.newOrder
                  ? Container(
                      padding: const EdgeInsets.all(17),
                      width: Get.width * 0.31,
                    )
                  : GestureDetector(
                      onTap: widget.ontap,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        width: Get.width * 0.31,
                        decoration: BoxDecoration(
                            color: widget.status != 'Delivered'
                                ? const Color(0xffFFAA00)
                                : const Color(0xff13B20C),
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.status,
                              style: AppDecoration.mediumStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.whiteColor),
                            ),
                            10.horizontalSpace,
                            if (widget.status != 'Delivered')
                              const Icon(
                                Icons.arrow_drop_down_circle_sharp,
                                color: Colors.white,
                              )
                          ],
                        ),
                      ),
                    ),
              const Divider(),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Username',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('John Smith')
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('06 Jan, 2022')
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Time',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('03:11 AM')
                ],
              ),
              5.verticalSpace,
              const Divider(),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Address',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('Lorem ipsum (California)')
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('06 Jan, 2022')
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contact Information',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('(+1) 123456789')
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pick Up Delay Time',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  const Text('05:45 PM')
                ],
              ),
              5.verticalSpace,
              const Divider(),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mode Of Payment',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  Text(
                    'PayPal',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  )
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  Text(
                    '\$800',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  )
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    height: 12.h,
                    width: Get.width * 0.35,
                    title: 'Accept',
                    fontFamily: 'Nunito',
                    fontsize: 7.h,
                    color: AppColors.whiteColor,
                    gradient: AppColors.gradient,
                  ),
                  20.horizontalSpace,
                  CustomButton(
                    onTap: () {
                      primaryDialogue(context,
                          title: 'Delete Account',
                          message:
                              'Are you sure you want to delete\nthis account?',
                          actionText1: 'Cancel',
                          actionText2: 'Delete',
                          onFirstAction: () => Get.back(),
                          onSecondAction: () => Get.back());
                    },
                    height: 12.h,
                    width: Get.width * 0.35,
                    title: 'Reject',
                    fontFamily: 'Nunito',
                    fontsize: 7.h,
                    color: AppColors.blackColor,
                    gradient: AppColors.backgroundGradient,
                  )
                ],
              ),
            ],
          ).paddingAll(20),
          Positioned(
              left: 178.w, bottom: 254.h, child: Image.asset(AppAssets.itemOne))
        ],
      ),
    );
  }
}
