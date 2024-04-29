import 'package:street_eats_vendor/screens/home/home_screen.dart';

import '../utils/export.dart';

Future<void> changePage(String routeName,
    {bool nested = false,
    BuildContext? context,
    arguments,
    bool signOut = false}) async {
  if (signOut) {
    Get.offAllNamed(routeName);
  } else if (nested) {
    Get.offNamedUntil(
      routeName,
      id: 1,
      ModalRoute.withName(HomeScreen.routeName),
      arguments: arguments,
    );
  } else {
    Get.toNamed(routeName, arguments: arguments);
  }
}
