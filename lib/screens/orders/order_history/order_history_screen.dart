import 'package:street_eats_vendor/controllers/filter_container_controller.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/helpers/widgets/container_selection_row.dart';
import 'package:street_eats_vendor/screens/orders/order_history/components/order_status_card.dart';

import '../../../helpers/functions/overlay_container.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({
    super.key,
  });

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
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ContainerSelectionRow(
                      containerTexts: [
                        'New Orders(23)',
                        'Preparing(12)',
                        'Completed(14)',
                        'Cancelled(14)'
                      ],
                      padding: 8,
                      selectedColor: AppColors.purpleColor,
                      // borderRadius: const BorderRadius.only(
                      //   topLeft: Radius.circular(2),
                      //   bottomLeft: Radius.circular(2),
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  controller.filterIndex == 0
                      ? OrderStatusCard(
                          status: controller.status,
                          newOrder: true,
                          ontap: () => showContextMenu(context),
                        )
                      : OrderStatusCard(
                          status: controller.status,
                          newOrder: false,
                          ontap: () => showContextMenu(context),
                        )
                ],
              ).paddingAll(20),
            ),
          ),
        );
      },
    );
  }
}
