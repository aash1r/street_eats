import 'package:get/get.dart';

class InputFieldController extends GetxController {
  bool isObes = true;

  void toggleObesecure() {
    isObes = !isObes;
    update();
  }
}
