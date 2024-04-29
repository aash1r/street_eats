import '../../../../helpers/utils/export.dart';
import '../service_order_details.dart';
import 'service_requests_card.dart';

class OrderRequests extends StatelessWidget {
  const OrderRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          List<String> statuses = [
            'Agreement Submitted',
            'Agreement Pending',
          ];
          return Column(
            children: [
              ServiceRequestsCard(
                ontap: (status) {
                  Get.to(
                    () => ServiceOrderDetails(
                      status: status,
                      isRequested: true,
                      isInProgress: false,
                      isCompleted: false,
                      isCancelled: false,
                    ),
                  );
                },
                status: statuses[index].toString(),
                serviceName: 'Wedding Ceremony',
                color: AppColors.grayColor,
                showButton: false,
                txt: '',
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
