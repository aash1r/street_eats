import '../helpers/utils/export.dart';

class ServiceOrderController extends GetxController {
  int selectedContainerIndex = 0;

  void setSelectedContainerIndex(int index) {
    selectedContainerIndex = index;
    update();
  }
}
