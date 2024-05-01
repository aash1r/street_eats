import 'package:street_eats_vendor/helpers/utils/export.dart';

class BottomNavBarController extends GetxController {
  int currentIndex = 0;
  void setIndex(int index) {
    currentIndex = index;
    update();
  }
}
