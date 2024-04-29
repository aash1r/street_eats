import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/chats/conversation_screen.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/service_order_screen.dart';

import '../../../helpers/utils/export.dart';
import 'catering_contract_form.dart';
import 'components/custom_timeline_tile.dart';
import 'components/service_requests_card.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({
    super.key,
    required this.status,
  });
  static const routeName = 'order-tracking-screen';

  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.keyboard_backspace_rounded)),
          centerTitle: true,
          title: Text(
            'Service Order',
            style: AppDecoration.boldStyle(
                fontFamily: 'Nunito',
                fontSize: 9.h,
                color: AppColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceRequestsCard(
                  ontap: (status) =>
                      changePage(CateringContractFormScreen.routeName),
                  // ontap: (status) {
                  //   Get.to(() => const CateringContractFormScreen());
                  // },
                  txt: 'View Agreement',
                  status: status ?? '',
                  serviceName: 'Wedding Ceremony',
                  color: status == 'Delivered'
                      ? const Color(0xff6DE28C)
                      : AppColors.grayColor,
                  showButton: true),
              10.verticalSpace,
              Center(
                child: Text('Order Tracking',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 9.h,
                        color: AppColors.blackColor)),
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Status:',
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.h,
                          color: AppColors.blackColor)),
                  Text(status ?? "")
                ],
              ),
              10.verticalSpace,
              CustomTimeLineTile(
                isFirst: true,
                isLast: false,
                isPast: true,
                orderProgress: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Placed',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.h,
                                color: AppColors.blackColor)),
                        Text(
                          '5:30 pm, Sep 23, 2023',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                    5.verticalSpace,
                    Text(AppString.dummytext3),
                    10.verticalSpace,
                  ],
                ).paddingSymmetric(horizontal: 10),
                status: status ?? "",
              ),
              CustomTimeLineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                orderProgress: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('In Progress',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.h,
                                color: AppColors.blackColor)),
                        Text(
                          '8:30 pm, Sep 23, 2023',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Text(AppString.dummytext3),
                    10.verticalSpace,
                  ],
                ).paddingSymmetric(horizontal: 10),
                status: status ?? "",
              ),
              CustomTimeLineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                orderProgress: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order is On Way',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.h,
                                color: AppColors.blackColor)),
                        Text(
                          '8:30 pm, Sep 23, 2023',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Text(AppString.dummytext3),
                    10.verticalSpace,
                  ],
                ).paddingSymmetric(horizontal: 10),
                status: status ?? "",
              ),
              CustomTimeLineTile(
                isFirst: false,
                isLast: true,
                isPast: true,
                orderProgress: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivered',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.h,
                                color: AppColors.blackColor)),
                        Text(
                          '8:30 pm, Sep 23, 2023',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Text(AppString.dummytext3),
                    10.verticalSpace,
                  ],
                ).paddingSymmetric(horizontal: 10),
                status: status ?? "",
              ),
              10.verticalSpace,
              status == 'Delivered'
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          fontFamily: 'Nunito',
                          backColor: AppColors.grayColor,
                          color: AppColors.blackColor,
                          fontsize: 16,
                          height: 22.h,
                          title: 'Chat with Customer',
                          onTap: () => changePage(ConversationScreen.routeName),
                        ),
                        CustomButton(
                          fontFamily: 'Nunito',
                          gradient: AppColors.gradient,
                          color: AppColors.whiteColor,
                          fontsize: 16,
                          height: 22.h,
                          title: 'Mark As Completed',
                          onTap: () {
                            secondaryDialogue(context,
                                title: 'Congratulations',
                                message:
                                    'You have completed\nyour service successfully',
                                actionText: 'Continue', onAction: () {
                              Get.off(() => const ServiceOrdersScreen());
                            });
                          },
                        )
                      ],
                    )
                  : CustomButton(
                      fontFamily: 'Nunito',
                      gradient: AppColors.gradient,
                      color: AppColors.whiteColor,
                      fontsize: 18,
                      height: 22.h,
                      title: 'Chat with Customer',
                      onTap: () => changePage(ConversationScreen.routeName),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
