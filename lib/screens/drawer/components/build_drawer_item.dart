import 'package:street_eats_vendor/screens/drawer/components/drawer_screen_model.dart';
import '../../../controllers/drawer_controller.dart';
import '../../../helpers/utils/export.dart';
import 'drawer_content.dart';

Widget buildDrawerItem(
  DrawerScreenModel screen,
  DrawerContentController drawerController,
  int index,
) {
  return GestureDetector(
    onTap: () {
      drawerController.updateEnabledContent(index);
      if (screen.text == 'Announcements/Promtions') {
      } else {
        Get.to(() => screen.page);
      }
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 48,
          width: 7,
          decoration: BoxDecoration(
            gradient: drawerController.contentEnabled == index
                ? AppColors.gradient
                : null,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 36,
            top: 10,
            right: 20,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            color: drawerController.contentEnabled == index
                ? AppColors.themeColor.withOpacity(0.1)
                : null,
            borderRadius: drawerController.contentEnabled == index
                ? const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                : null,
          ),
          child: DrawerContent(
            text: screen.text,
            imageHeight: 20,
            imagePath: screen.image,
          ),
        ),
      ],
    ),
  );
}
