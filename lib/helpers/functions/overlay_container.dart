import 'package:street_eats_vendor/controllers/filter_container_controller.dart';

import '../utils/export.dart';

const Offset _tapPosition = Offset(191.8, 172.9);

void showContextMenu(BuildContext context) async {
  final controller = Get.find<OrderFilterController>();
  final RenderObject? overlay = Overlay.of(context).context.findRenderObject();
  String? selectedOption;

  switch (controller.status) {
    case 'Preparing':
      selectedOption = await showMenu<String>(
        context: context,
        position: RelativeRect.fromRect(
            Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy + 5, 100, 100),
            Rect.fromLTWH(50, -240, overlay!.paintBounds.size.width,
                overlay.paintBounds.size.height)),
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        items: [
          PopupMenuItem(
            height: 10,
            padding: const EdgeInsets.only(right: 8, left: 8),
            value: "On the way",
            child: Text(
              'On the way',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor.withOpacity(0.5)),
            ),
          ),
        ],
      );
    case 'On the way':
      selectedOption = await showMenu<String>(
        context: context,
        position: RelativeRect.fromRect(
            Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy + 5, 100, 100),
            Rect.fromLTWH(50, -240, overlay!.paintBounds.size.width,
                overlay.paintBounds.size.height)),
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        items: [
          PopupMenuItem(
            height: 10,
            padding: const EdgeInsets.only(right: 8, left: 8),
            value: "Delivered",
            child: Text(
              'Delivered',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor.withOpacity(0.5)),
            ),
          ),
        ],
      );
  }

  if (selectedOption != null) {
    controller.setSelectedOption(selectedOption);
  }
  if (selectedOption == 'Delivered') {
    controller.setFilterIndex(2);
  }
}
