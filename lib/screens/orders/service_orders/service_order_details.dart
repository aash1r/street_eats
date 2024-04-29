import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/catering_contract_form.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/agreement_screen/create_agreement_screen.dart';

import '../../../helpers/utils/export.dart';
import 'components/service_requests_card.dart';

class ServiceOrderDetails extends StatelessWidget {
  const ServiceOrderDetails({
    super.key,
    this.status,
    required this.isRequested,
    required this.isInProgress,
    required this.isCompleted,
    required this.isCancelled,
  });
  static const routeName = 'service-order-details-screen';

  final String? status;
  final bool isRequested;
  final bool isInProgress;
  final bool isCompleted;
  final bool isCancelled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_backspace_rounded),
            onPressed: () => Get.back(),
          ),
          centerTitle: true,
          title: isInProgress
              ? Text(
                  'Service Details',
                  style: AppDecoration.semiBoldStyle(
                      fontFamily: 'Nunito',
                      fontSize: 9.h,
                      color: AppColors.blackColor),
                )
              : Text(
                  'Service Order Details',
                  style: AppDecoration.semiBoldStyle(
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
              if (isInProgress || isCancelled)
                ServiceRequestsCard(
                  status: status ?? '',
                  serviceName: 'Wedding Ceremony',
                  color: isInProgress
                      ? AppColors.grayColor
                      : const Color(0xffFF8282),
                  showButton: false,
                  ontap: (status) {},
                  txt: '',
                ),
              5.verticalSpace,
              buildSectionTitle('Contact Details'),
              buildDetailItem('Name:', 'James Robert'),
              buildDetailItem('Email:', 'Jamesrobert123@gmail.com'),
              buildDetailItem('Phone Number:', '+45 34 3434432'),
              const Divider(),
              Row(
                children: [
                  Text('Event Details',
                      style: AppDecoration.boldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.h,
                          color: AppColors.blackColor))
                ],
              ).paddingOnly(bottom: 8),
              buildDetailItem('Date:', 'September 23, 2023'),
              buildDetailItem('Start Time:', '5:30 pm'),
              buildDetailItem('End Time:', '9:30 pm'),
              buildDetailItem('Address:', 'Bangalore Australia 3rd Street'),
              buildDetailItem('Occasion:', 'Wedding'),
              buildDetailItem('Cuisine Selection:', 'Fried Fish'),
              buildDetailItem('Event Type:', 'Catered Event'),
              buildDetailItem('Expected Number of People:', '150'),
              buildDetailItem('Particular Truck Requested:', 'Truck'),
              buildDetailItem('Get Bids from Other Trucks:', 'Yes'),
              buildDetailItem('Number of Trucks:', '2'),
              buildDetailItem('Budget:', '\$ 500'),
              Row(
                children: [
                  Text('Event Details',
                      style: AppDecoration.boldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.h,
                          color: AppColors.blackColor))
                ],
              ).paddingOnly(bottom: 8),
              Row(
                children: [Expanded(child: Text(AppString.dummytext3))],
              ),
              5.verticalSpace,
              const Divider(),
              20.verticalSpace,
              if (isCancelled)
                const Text(
                  'Due to the many order the vendor has cancel your order',
                  style: TextStyle(color: Color(0xffFF0E0E)),
                ),
              status == 'Agreement Submitted'
                  ? CustomButton(
                      gradient: AppColors.gradient,
                      height: 22.h,
                      fontFamily: 'Nunito',
                      color: AppColors.whiteColor,
                      title: 'View Agreement',
                      onTap: () =>
                          changePage(CateringContractFormScreen.routeName),
                      fontsize: 8.h,
                    )
                  : CustomButton(
                      gradient: AppColors.gradient,
                      height: 22.h,
                      fontFamily: 'Nunito',
                      color: AppColors.whiteColor,
                      title: 'Create Agreement',
                      onTap: () => changePage(CreateAgreementScreen.routeName),
                      fontsize: 8.h,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppDecoration.boldStyle(
                fontFamily: 'Nunito',
                fontSize: 7.h,
                color: AppColors.blackColor),
          ),
          if (isInProgress == false)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: isCancelled
                      ? null
                      : AppColors.grayColor.withOpacity(0.4)),
              child: isCancelled
                  ? null
                  : Text(
                      status ?? "",
                      style: AppDecoration.boldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.h,
                          color: AppColors.blackColor),
                    ),
            )
        ],
      ),
    );
  }

  Widget buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 7.h,
                color: AppColors.blackColor),
          ),
          Text(
            value,
            style: AppDecoration.lightStyle(
                fontFamily: 'Nunito',
                fontSize: 7.h,
                color: AppColors.blackColor),
          ),
        ],
      ),
    );
  }
}
