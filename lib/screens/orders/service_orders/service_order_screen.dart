import 'package:street_eats_vendor/controllers/filter_container_controller.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/components/order_cancelled.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/components/order_completed.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/components/order_inprogress.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/components/order_requests.dart';
import '../../../helpers/utils/export.dart';
import '../../../helpers/widgets/container_selection_row.dart';

class ServiceOrdersScreen extends StatelessWidget {
  const ServiceOrdersScreen({
    super.key,
  });
  static const routeName = 'service-order-screen';

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OrderFilterController(),
      builder: (controller) {
        return Container(
          decoration:
              const BoxDecoration(gradient: AppColors.backgroundGradient),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(Icons.keyboard_backspace_rounded)),
              centerTitle: true,
              title: Text(
                'Service Order Requests',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 9.h,
                    color: AppColors.blackColor),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const ContainerSelectionRow(
                    containerTexts: [
                      'Request',
                      'In Progress',
                      'Completed',
                      'Cancelled'
                    ],
                    // right: 15,
                  ),
                  10.verticalSpace,

                  Builder(
                    builder: (_) {
                      switch (controller.filterIndex) {
                        case 0:
                          return const OrderRequests();
                        case 1:
                          return const OrderInProgress();
                        case 2:
                          return const OrderCompleted();
                        case 3:
                          return const OrderCancelled(
                            status: '',
                          );
                        default:
                          return const Text('');
                      }
                    },
                  )
                  // OrderCancelled(status: 'cancelled'),
                ],
              ).paddingAll(20),
            ),
          ),
        );
      },
    );
  }
}
