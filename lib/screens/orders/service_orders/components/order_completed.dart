import '../../../../helpers/utils/export.dart';
import 'service_requests_card.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ServiceRequestsCard(
                ontap: (status) {
                  secondaryDialogue(context,
                      title: 'Request Submitted',
                      message:
                          'Your request to release payment has\nbeen submitted successfully',
                      actionText: 'Continue', onAction: () {
                    Get.back();
                  });
                },
                status: 'Completed',
                serviceName: 'Wedding Ceremony',
                color: const Color(0xff6DE28C),
                showButton: true,
                txt: 'Request For Payment',
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
