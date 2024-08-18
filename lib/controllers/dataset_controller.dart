import 'package:get/get.dart';
import 'package:signal_flags_app/models/flags.dart';

class DatasetController extends GetxController {
  var selectedMode = 1.obs;

  // Predefined lists for each mode
  List<Map<String, dynamic>> singleFlagsMessages = [];
  List<Map<String, dynamic>> multipleFlagsMessages = [];
  List<Map<String, dynamic>> customFlagsMessages = [];

  @override
  void onInit() {
    super.onInit();
    singleFlagsMessages = messages.where((message) => message['flags'].length == 1).toList();
    multipleFlagsMessages = messages.where((message) => message['flags'].length > 1).toList();
    customFlagsMessages = ownMessages;
  }

  List<Map<String, dynamic>> get filteredMessages {
    switch (selectedMode.value) {
      case 1:
        return singleFlagsMessages;
      case 2:
        return multipleFlagsMessages;
      case 3:
        return customFlagsMessages;
      default:
        return [];
    }
  }

  void updateMode(int mode) {
    selectedMode.value = mode;
  }
}
