import '../../../../helpers/utils/export.dart';
import '../order_tracking_screen.dart';
import 'service_requests_card.dart';

class OrderInProgress extends StatelessWidget {
  const OrderInProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          List<String> statuses = ['In Progress', 'On Way', 'Delivered'];
          return Column(
            children: [
              ServiceRequestsCard(
                status: statuses[index].toString(),
                serviceName: 'Wedding Ceremony',
                ontap: (status) {
                  Get.to(
                    () => OrderTrackingScreen(
                      status: status,
                    ),
                  );
                },
                color: statuses[index] == 'Delivered'
                    ? const Color(0xff6DE28C)
                    : AppColors.grayColor,
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
