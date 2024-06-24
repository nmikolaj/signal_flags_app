import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
  QuestionController(this.mode);

  // Called after widgets memory is allocated
  @override
  void onInit() {

    _questionList = generateQuestions(mode);

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

    _pageController = PageController();
    super.onInit();
  }

  // To prevent memory leaks
  @override
  void onClose() {
    _animationController.stop();
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
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

    _animationController.stop();
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
      _animationController.reset();
      _animationController
          .forward()
          .whenComplete(nextQuestion); //() => nextQuestion()
          
    } else {
      Get.to(() => ScoreScreen(correctAnswers: _correctAnsCount.value, wrongAnswers: _wrongAnsCount.value, totalQuestions: _questionList.length,));
    }
  }

  void updateQuestionNumber(int index) {
    _questionNumber.value = index + 1;
  }
}

List<Question> generateQuestions(String mode) {
  final Random random = Random();
  final List<Question> questionList = [];

  if (mode == 'messages') {
    // Message questions
    List<Map<String, dynamic>> selectedMessages = messages.toList();

    selectedMessages.shuffle(random);
    selectedMessages = selectedMessages.take(5).toList(); // Select 5 random messages

    for (var messageData in selectedMessages) {
      List<String> messageAnswers = messages.map((m) => m['message']['en'] as String).toList()..shuffle(random);
      messageAnswers = messageAnswers.take(4).toList();

      if (!messageAnswers.contains(messageData['message']['en'])) {
        messageAnswers[random.nextInt(4)] = messageData['message']['en'];
      }

      questionList.add(Question(
        id: questionList.length + 1,
        question: "What is the message associated with these flags?",
        answers: messageAnswers,
        answer: messageAnswers.indexOf(messageData['message']['en']),
        isFlagQuestion: false, // used for handling in body
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
    List<String> nameAnswers = flags.where((f) => f['type'] == "normal").map((f) => f['name']!).toList()..shuffle(random);
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
  selectedFlags = selectedFlags.take(5).toList();   // Select new 5 random flags

  for(var flag in selectedFlags) {
    List<String> imageAnswers = flags.where((f) => f['type'] == "normal").map((f) => f['imagePath']!).toList()..shuffle(random);
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