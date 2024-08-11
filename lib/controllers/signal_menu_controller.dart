import 'package:get/get.dart';

class SignalMenuController extends GetxController {

  RxBool showProgressBar = true.obs;

  RxInt selectedFlagCount = 1.obs; // For choosing number of flags in generated questions

  // Toggles progressbar visibility
  void toggleProgressBar(bool value) {
    showProgressBar.value = value;
  }

  // Updates slider value
  void updateFlagCount(int count) {
    selectedFlagCount.value = count;
  }
}
