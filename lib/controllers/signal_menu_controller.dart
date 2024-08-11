import 'package:get/get.dart';

class SignalMenuController extends GetxController {

  RxInt selectedFlagCount = 1.obs;

  RxBool showProgressBar = true.obs;

  // Updates slider value
  void updateFlagCount(int count) {
    selectedFlagCount.value = count;
  }

  // Toggles progressbar visibility
  void toggleProgressBar(bool value) {
    showProgressBar.value = value;
  }
}
