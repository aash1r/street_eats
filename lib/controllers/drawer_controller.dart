import '../helpers/utils/export.dart';

class DrawerContentController extends GetxController {
  bool owner = false;
  int contentEnabled = 0;
  void updateEnabledContent(int value) {
    contentEnabled = value;
    update();
  }

  void toggleOwner() {
    owner = !owner;
    update();
  }
}
