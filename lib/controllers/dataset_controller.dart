import 'package:get/get.dart';

class DatasetController extends GetxController {

  var selectedMode = 1.obs;

  void updateMode(int mode) {
    selectedMode.value = mode;
  }
}
