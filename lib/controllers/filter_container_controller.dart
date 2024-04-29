import 'package:street_eats_vendor/helpers/utils/export.dart';

class FilterContainerController extends GetxController {
  int filterIndex = 0;

  void setFilterIndex(int index) {
    filterIndex = index;
    update();
  }

  String status = 'Preparing';

  // void setSelectedContainerIndex(int index) {
  //   selectedContainerIndex = index;
  //   update();
  // }

  void setSelectedOption(String selectedOption) {
    status = selectedOption;
    update();
  }
}
