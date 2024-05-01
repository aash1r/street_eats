import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'bottom_bar.dart';
import 'controller/bottom_bar_controller.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({super.key, required this.index, required this.item});
  final int index;
  final BottomBar item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          controller.setIndex(index);
          changePage(
            item.routeName,
          );
        },
        // child:
        child: SvgPicture.asset(
          item.image,
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
        ),
      );
    });
  }
}
