import 'package:get/get.dart';
import 'package:signal_flags_app/models/flags.dart';

class SignalController extends GetxController {
  var signalList = <Map<String, dynamic>>[].obs;
  var questionNumber = 1.obs;
  var selectedFlags = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    signalList.value = multipleFlagMessages; // .value bc .obs
  }

  void nextSignal() {
    if (questionNumber.value != signalList.length) {
      questionNumber.value++;
      selectedFlags.clear();
    }
  }

  void selectFlag(String flag) {
    selectedFlags.add(flag);
  }

  bool checkAnswer() {
    var currentSignal = signalList[questionNumber.value - 1];
    return Set.from(currentSignal['flags']).containsAll(selectedFlags) &&
           Set.from(selectedFlags).containsAll(currentSignal['flags']);
  }
}
