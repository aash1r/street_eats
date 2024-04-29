import '../../../../helpers/utils/export.dart';
import '../service_order_details.dart';
import 'service_requests_card.dart';

class OrderCancelled extends StatelessWidget {
  const OrderCancelled({super.key, required this.status});
  final String status;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (index, context) {
        final color = status == 'cancelled'
            ? const Color(0xffFF8282)
            : status == 'inProgress'
                ? Colors.black
                : status == 'request'
                    ? Colors.blueAccent
                    : Colors.deepPurple;
        return Column(
          children: [
            ServiceRequestsCard(
              ontap: (status) {
                Get.to(() => ServiceOrderDetails(
                    status: status,
                    isRequested: false,
                    isInProgress: false,
                    isCompleted: false,
                    isCancelled: true));
              },
              status: 'Cancelled',
              serviceName: 'Wedding Ceremony',
              color: color,
              showButton: false,
              txt: '',
            ),
            const SizedBox(
              height: 20,
            )
          ],
        );
      },
    );
  }
}
