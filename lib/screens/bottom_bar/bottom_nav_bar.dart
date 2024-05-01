import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/bottom_bar/bottom_bar.dart';
import 'package:street_eats_vendor/screens/bottom_bar/bottom_bar_item.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';
import 'package:collection/collection.dart';
import '../../routes.dart';
import 'controller/bottom_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  static const routeName = '/bottom-bar';
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: BottomNavBarController(),
        builder: (controller) {
          return Scaffold(
            body: Navigator(
              key: Get.nestedKey(1),
              initialRoute: HomeScreen.routeName,
              onGenerateRoute: Routes.onGenerateRoute,
            ),
            bottomNavigationBar: Container(
              color: AppColors.grayColor,
              height: 65,
              width: 1.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: BottomBar.allBottomBarItems
                    .mapIndexed((index, item) =>
                        BottomBarItem(index: index, item: item))
                    .toList(),
              ),
            ),
          );
        });
  }
}
