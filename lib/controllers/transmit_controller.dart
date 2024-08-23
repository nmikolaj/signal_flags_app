import 'dart:math';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/score/score_screen.dart';
import 'package:signal_flags_app/models/flags.dart';

class SignalController extends GetxController {
  final int maxFlags = 35;

  final int flagCount;

  List<Map<String, dynamic>> categoryMessages = [];

  RxList<Map<String, dynamic>> _signalList = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> get signalList => _signalList;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  RxList<String> _selectedFlags = <String>[].obs;
  List<String> get selectedFlags => _selectedFlags;

  RxList<bool> _selectedFlagsCorrect = <bool>[].obs;
  List<bool> get selectedFlagsCorrect => _selectedFlagsCorrect;

  RxInt _correctAnswers = 0.obs;
  RxInt get correctAnswers => _correctAnswers;

  RxInt _wrongAnswers = 0.obs;
  RxInt get wrongAnswers => _wrongAnswers;

  RxBool showNextButton = false.obs;

  RxBool answerChecked = false.obs;

  RxBool answeredCorrectly = false.obs;

  late DateTime _startTime;

  SignalController({required this.flagCount});

  @override
  void onInit() {
    super.onInit();
     _startTime = DateTime.now();

    _signalList.value = _getRandomMessages(5, flagCount);
  }

  List<Map<String, dynamic>> _getCategoryMessages() {
    switch (flagCount) {
      case 1:
        return singleFlagSignals;
      case 2:
        return _flattenCategory(distressEmergencySignals);
      case 3:
        return _flattenCategory(positionRescueSignals);
      case 4:
        return _flattenCategory(casualtiesDamagesSignals);
      case 5:
        return _flattenCategory(navigationHydrographySignals);
      case 6:
        return _flattenCategory(maneuversSignals);
      case 7:
        return _flattenCategory(miscellaneousSignals);
      case 8:
        return _flattenCategory(meteorologyWeatherSignals);
      case 9:
        return _flattenCategory(communicationsSignals);
      default:
        return [];
    }
  }

  List<Map<String, dynamic>> _flattenCategory(List<Map<String, dynamic>> categoryList) {
    List<Map<String, dynamic>> flattenedList = [];

    for (var category in categoryList) {
      flattenedList.addAll(category['signals']);
    }
    return flattenedList;
  }

  void nextSignal() {
    if (_questionNumber.value != _signalList.length) {
      _questionNumber.value++;
      _selectedFlags.clear();
      _selectedFlagsCorrect.clear();
      answerChecked.value = false;
      answeredCorrectly.value = false;
    } else {
      final duration = DateTime.now().difference(_startTime);

      Get.to(() => ScoreScreen(
        correctAnswers: _correctAnswers.value,
        wrongAnswers: _wrongAnswers.value,
        totalQuestions: _signalList.length,
        elapsedTime: duration,
      ));
    }
  }

  void selectFlag(String flag) {
    if (_selectedFlags.length < maxFlags) {
      _selectedFlags.add(flag);
    }
  }

  void removeLastFlag() {
    if(_selectedFlags.isNotEmpty){
      _selectedFlags.removeLast();
      if (_selectedFlagsCorrect.isNotEmpty) {
        _selectedFlagsCorrect.removeLast();
      }
    }
  }

  void checkAnswer() {
    Map<String, dynamic> currentSignal = _signalList[_questionNumber.value - 1];

    bool isCorrect = true;
    _selectedFlagsCorrect.clear();

    for (int i = 0; i < _selectedFlags.length; i++) {
      if (i < currentSignal['flags'].length && _selectedFlags[i] == currentSignal['flags'][i]) {
        _selectedFlagsCorrect.add(true);
      } else {
        _selectedFlagsCorrect.add(false);
        isCorrect = false;
      }
    }

    // If there are more selected flags than required, mark the extra ones as incorrect
    if (_selectedFlags.length != currentSignal['flags'].length) {
      isCorrect = false;
      for (int i = currentSignal['flags'].length; i < _selectedFlags.length; i++) {
        _selectedFlagsCorrect[i] = false;
      }
    }

    if (isCorrect) {
      _correctAnswers.value++;
      answeredCorrectly.value = true;
    } else {
      _wrongAnswers.value++;
    }

    showNextButton.value = true;

    answerChecked.value = true;
  }

  List<Map<String, dynamic>> _getRandomMessages(int messagesCount, int flagCount) {
    final random = Random();
    final List<Map<String, dynamic>> selectedMessages = [];
    final List<Map<String, dynamic>> extractedMessages;

    extractedMessages = _getCategoryMessages().toList();

    for (int i = 0; i < messagesCount; i++) {
      if (extractedMessages.isEmpty) break;
      final index = random.nextInt(extractedMessages.length);
      selectedMessages.add(extractedMessages.removeAt(index));
    }

    return selectedMessages;
  }
  
}
