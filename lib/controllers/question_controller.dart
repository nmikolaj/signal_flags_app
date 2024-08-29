import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/language_controller.dart';
import 'package:signal_flags_app/display/score/score_screen.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'dart:math';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation; // <double> is more type-safe
  Animation<double> get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  List<Question> _questionList = [];
  List<Question> get questionList => _questionList;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _selectedAns; // late is fine as long as initialized before usage
  int get selectedAns => _selectedAns;

  late int _correctAns;
  int get correctAns => _correctAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  RxInt _correctAnsCount = 0.obs;
  RxInt get correctAnsCount => _correctAnsCount;

  RxInt _wrongAnsCount = 0.obs;
  RxInt get wrongAnsCount => _wrongAnsCount;

  String mode;

  bool showProgressBar;

  int flagCount;

  late DateTime _startTime;

  final LanguageController _languageController = Get.find<LanguageController>();

  QuestionController(this.mode, this.showProgressBar, this.flagCount);

  // Called after widgets memory is allocated
  @override
  void onInit() {

    _startTime = DateTime.now();

    _questionList = generateQuestions(mode);

    if (showProgressBar) {
    _animationController =
        AnimationController(duration: const Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController)
      ..addListener(() {
        update(["progressBar"]); // Update only progress bar on each tick
      });

    // After completion go to next question
    _animationController
        .forward()
        .whenComplete(nextQuestion);
    }

    _pageController = PageController();
    super.onInit();
  }

  // To prevent memory leaks
  @override
  void onClose() {
    if (showProgressBar) {
      _animationController.stop();
      _animationController.dispose();
    }

    _pageController.dispose();
    super.onClose();
  }

  List<Question> generateQuestions(String mode) {
    final Random random = Random();
    final List<Question> questionList = [];

    if (mode == 'messages') {
      // Messages questions

      String selectedLanguage = _languageController.selectedLanguage.value;

      List<Map<String, dynamic>> selectedMessages = _getCategoryMessages().toList();

      List<String> allMessageAnswers = selectedMessages.map((m) => m['message'][selectedLanguage] as String).toList(); // Answers taken from the whole category list

      selectedMessages.shuffle(random);
      selectedMessages = selectedMessages.take(5).toList(); // Selects 5 random messages

      for (var messageData in selectedMessages) {
        List<String> messageAnswers = allMessageAnswers.toList()..shuffle(random);

        messageAnswers = messageAnswers.take(4).toList();

        if (!messageAnswers.contains(messageData['message'][selectedLanguage])) { // Fine for a small list
          // Adds correct answer if chosen answers don't already contain it
          messageAnswers[random.nextInt(4)] = messageData['message'][selectedLanguage];
        }

        questionList.add(Question(
          id: questionList.length + 1,
          question: "What is the message associated with these flags?",
          answers: messageAnswers,
          answer: messageAnswers.indexOf(messageData['message'][selectedLanguage]),
          isFlagQuestion: false, // Used for handling in body
          flagImage: null,
          flags: (messageData['flags'] as List).map((flag) => flag as String).toList(),
        ));
      }
    } else {
      // Text questions
      List<Map<String, String>> selectedFlags = flags.where((flag) => flag['type'] == mode).toList();
      selectedFlags.shuffle(random);
      selectedFlags = selectedFlags.take(5).toList(); // Select 5 random flags

      for (var flag in selectedFlags) {
        List<String> nameAnswers = flags.where((f) => f['type'] == mode).map((f) => f['name']!).toList()..shuffle(random);
        nameAnswers = nameAnswers.take(4).toList();

        if (!nameAnswers.contains(flag['name'])) {
          nameAnswers[random.nextInt(4)] = flag['name']!;
        }

        questionList.add(Question(
          id: questionList.length + 1,
          question: "What is the name of this flag?",
          answers: nameAnswers,
          answer: nameAnswers.indexOf(flag['name']!),
          isFlagQuestion: true,
          flagImage: flag['imagePath'],
          flags: [],
        ));
      }

      // Image questions
      selectedFlags = flags.where((flag) => flag['type'] == mode).toList();
      selectedFlags.shuffle(random);
      selectedFlags = selectedFlags.take(5).toList(); // Select 5 random flags again

      for (var flag in selectedFlags) {
        List<String> imageAnswers = flags.where((f) => f['type'] == mode).map((f) => f['imagePath']!).toList()..shuffle(random);
        imageAnswers = imageAnswers.take(4).toList();

        if (!imageAnswers.contains(flag['imagePath'])) {
          imageAnswers[random.nextInt(4)] = flag['imagePath']!;
        }

        questionList.add(Question(
          id: questionList.length + 1,
          question: "${flag['name']}",
          answers: imageAnswers,
          answer: imageAnswers.indexOf(flag['imagePath']!),
          isFlagQuestion: false,
          flagImage: null,
          flags: [],
        ));
      }
    }
    questionList.shuffle(random);

    return questionList;
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

  


  void checkAnswer(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) {
      _correctAnsCount.value++;
    } else {
      _wrongAnsCount.value++;
    }

    if (showProgressBar) {
      _animationController.stop();
    }
    update();

    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questionList.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);

      // Counter reset
      if (showProgressBar) {
        _animationController.reset();
        _animationController
          .forward()
          .whenComplete(nextQuestion); //() => nextQuestion()
      }
          
    } else {
      final duration = DateTime.now().difference(_startTime);

      Get.to(() => ScoreScreen(correctAnswers: _correctAnsCount.value, wrongAnswers: _wrongAnsCount.value, totalQuestions: _questionList.length, elapsedTime: duration,));
    }
  }

  void updateQuestionNumber(int index) {
    _questionNumber.value = index + 1;
  }
}

