import 'package:get/get.dart';
import 'package:signal_flags_app/models/custom_messages.dart';
import 'package:signal_flags_app/models/flags.dart';

class DatasetController extends GetxController {
  // Selected mode
  var selectedMode = 1.obs;

  // Selected dropdown category
  var selectedCategoryIndex = 0.obs;

  // Predefined lists for each mode and category
  List<Map<String, dynamic>> singleFlagsMessages = [];
  List<Map<String, dynamic>> customFlagsMessages = [];

  List<Map<String, dynamic>> distressMessages = distressSignals;
  List<Map<String, dynamic>> casualtiesDamagesMessages = casualtiesDamagesSignals;


  List<Map<String, String>> numericFlags = flags.where((flag) => flag['type'] == 'numeric').toList();

  final CustomMessages flagsModel = CustomMessages();

  @override
  void onInit() {
    super.onInit();
    singleFlagsMessages = singleFlagSignals;
    loadCustomMessages();
  }

  void loadCustomMessages() async {
    customFlagsMessages = await flagsModel.readMessages();
    update();
  }

  List<Map<String, dynamic>> get filteredMessages {
    switch (selectedMode.value) {
      case 1:
        return singleFlagsMessages;
      case 2:
        return _getCategoryMessages();
      case 3:
        return customFlagsMessages;
      default:
        return [];
    }
  }

  List<Map<String, dynamic>> _getCategoryMessages() {
    switch (selectedCategoryIndex.value) {
      case 0:
        return distressMessages;
      case 1:
        return casualtiesDamagesMessages;
      default:
        return [];
    }
  }

  void updateMode(int mode) {
    selectedMode.value = mode;
  }

   void updateCategory(int index) {
    selectedCategoryIndex.value = index;
    update();
  }
}
