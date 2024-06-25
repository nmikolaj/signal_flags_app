import 'dart:math';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/score/score_screen.dart';
import 'package:signal_flags_app/models/flags.dart';

class SignalController extends GetxController {
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

  @override
  void onInit() {
    super.onInit();
    // Load signal questions
    _signalList.value = _getRandomMessages(5);
  }

  void nextSignal() {
    if (_questionNumber.value != _signalList.length) {
      _questionNumber.value++;
      _selectedFlags.clear();
      _selectedFlagsCorrect.clear();
      answerChecked.value = false;
    } else {
      Get.to(() => ScoreScreen(
        correctAnswers: _correctAnswers.value,
        wrongAnswers: _wrongAnswers.value,
        totalQuestions: _signalList.length,
      ));
    }
  }

  void selectFlag(String flag) {
    _selectedFlags.add(flag);
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
    } else {
      _wrongAnswers.value++;
    }

    showNextButton.value = true;

    answerChecked.value = true;
  }

  List<Map<String, dynamic>> _getRandomMessages(int count) {
    final random = Random();
    final selectedMessages = <Map<String, dynamic>>[];
    final messagesCopy = List<Map<String, dynamic>>.from(messages);

    for (int i = 0; i < count; i++) {
      if (messagesCopy.isEmpty) break;
      final index = random.nextInt(messagesCopy.length);
      selectedMessages.add(messagesCopy.removeAt(index));
    }

    return selectedMessages;
  }
  
}
