import 'package:get/get.dart';
import 'package:signal_flags_app/models/custom_messages.dart';
import 'package:signal_flags_app/models/flags.dart';

class DatasetController extends GetxController {
  var selectedMode = 1.obs;

  // Predefined lists for each mode
  List<Map<String, dynamic>> singleFlagsMessages = [];
  List<Map<String, dynamic>> multipleFlagsMessages = [];
  List<Map<String, dynamic>> customFlagsMessages = [];


  List<Map<String, String>> numericFlags = flags.where((flag) => flag['type'] == 'numeric').toList();

  final CustomMessages flagsModel = CustomMessages();

  @override
  void onInit() {
    super.onInit();
    singleFlagsMessages = messages.where((message) => message['flags'].length == 1).toList();
    multipleFlagsMessages = messages.where((message) => message['flags'].length > 1).toList();
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
