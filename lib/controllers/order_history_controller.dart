import 'package:street_eats_vendor/helpers/utils/export.dart';

class OrderHistoryController extends GetxController {
  int selectedContainerIndex = 0;
  String status = 'Preparing';

  void setSelectedContainerIndex(int index) {
    selectedContainerIndex = index;
    update();
  }

  void setSelectedOption(String selectedOption) {
    status = selectedOption;
    update();
  }
}
