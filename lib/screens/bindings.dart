import 'package:get/get.dart';
import '../controllers/filter_container_controller.dart';
import 'bottom_bar/controller/bottom_bar_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(OrderFilterController());
    Get.put(BottomNavBarController());
  }
}
