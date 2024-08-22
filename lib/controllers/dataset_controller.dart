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

  List<Map<String, dynamic>> distressEmergencyMessages = distressEmergencySignals;
  List<Map<String, dynamic>> positionRescueMessages = positionRescueSignals;
  List<Map<String, dynamic>> casualtiesDamagesMessages = casualtiesDamagesSignals;
  List<Map<String, dynamic>> navigationHydrographyMessages = navigationHydrographySignals;
  List<Map<String, dynamic>> maneuversMessages = maneuversSignals;
  List<Map<String, dynamic>> miscellaneousMessages = miscellaneousSignals;
  List<Map<String, dynamic>> meteorologyWeatherMessages = meteorologyWeatherSignals;
  List<Map<String, dynamic>> communicationsMessages = communicationsSignals;

  List<Map<String, dynamic>> flattenedDistressMessages = [];
  List<Map<String, dynamic>> flattenedPositionRescueMessages = [];
  List<Map<String, dynamic>> flattenedCasualtiesDamagesMessages = [];
  List<Map<String, dynamic>> flattenedNavigationHydrographyMessages = [];
  List<Map<String, dynamic>> flattenedManeuversMessages = [];
  List<Map<String, dynamic>> flattenedMiscellaneousMessages = [];
  List<Map<String, dynamic>> flattenedMeteorologyWeatherMessages = [];
  List<Map<String, dynamic>> flattenedCommunicationsMessages = [];

  List<Map<String, String>> numericFlags = flags.where((flag) => flag['type'] == 'numeric').toList();

  final CustomMessages flagsModel = CustomMessages();

  @override
  void onInit() {
    super.onInit();
    singleFlagsMessages = singleFlagSignals;
    loadCustomMessages();
    flattenedDistressMessages = _flattenMessages(distressEmergencyMessages);
    flattenedPositionRescueMessages = _flattenMessages(positionRescueMessages);
    flattenedCasualtiesDamagesMessages = _flattenMessages(casualtiesDamagesMessages);
    flattenedNavigationHydrographyMessages = _flattenMessages(navigationHydrographyMessages);
    flattenedManeuversMessages = _flattenMessages(maneuversMessages);
    flattenedMiscellaneousMessages = _flattenMessages(miscellaneousMessages);
    flattenedMeteorologyWeatherMessages = _flattenMessages(meteorologyWeatherMessages);
    flattenedCommunicationsMessages = _flattenMessages(communicationsMessages);
  }

  // Used for handling subcategories in DatasetScreen
  List<Map<String, dynamic>> _flattenMessages(List<Map<String, dynamic>> messages) {
    List<Map<String, dynamic>> flatList = [];
    for (var category in messages) {
      flatList.add({"subcategory": category["subcategory"]});
      for (var signal in category["signals"]) {
        flatList.add(signal);
      }
    }
    return flatList;
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
        return flattenedDistressMessages;
      case 1:
        return flattenedPositionRescueMessages;
      case 2:
        return flattenedCasualtiesDamagesMessages;
      case 3:
        return flattenedNavigationHydrographyMessages;
      case 4:
        return flattenedManeuversMessages;
      case 5:
        return flattenedMiscellaneousMessages;
      case 6:
        return flattenedMeteorologyWeatherMessages;
      case 7:
        return flattenedCommunicationsMessages;
      default:
        return [];
    }
  }

  void loadCustomMessages() async {
    customFlagsMessages = await flagsModel.readMessages();
    update();
  }

  void updateMode(int mode) {
    selectedMode.value = mode;
  }

   void updateCategory(int index) {
    selectedCategoryIndex.value = index;
    update();
  }
}
