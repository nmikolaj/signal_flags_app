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
  late Animation _animation;
  Animation get animation => _animation; // instead this.animation

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questionList = [];
  List<Question> get questionList => this._questionList;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _selectedAns; // late is fine as long as initialized before usage
  int get selectedAns => this._selectedAns;

  late int _correctAns;
  int get correctAns => this._correctAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  RxInt _correctAnsCount = 0.obs;
  RxInt get correctAnsCount => this._correctAnsCount;

  RxInt _wrongAnsCount = 0.obs;
  RxInt get wrongAnsCount => this._wrongAnsCount;

  // Called after widgets memory is allocated
  @override
  void onInit() {

    _questionList = generateQuestions();

    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController) // unneded double?
      ..addListener(() {
        update(); // update like setState
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

    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questionList.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);

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

List<Question> generateQuestions() {
  final Random random = Random();
  final List<Question> questionList = [];

  // Text questions
  List<Map<String, String>> selectedFlags = List.from(flags)..shuffle(random);
  selectedFlags = selectedFlags.take(5).toList(); // Select 5 random flags

  for (var flag in selectedFlags) {
    List<String> nameAnswers = flags.map((f) => f['name']!).toList()..shuffle();
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
    ));
  }

  // Image questions
  selectedFlags = List.from(flags)..shuffle(random);
  selectedFlags = selectedFlags.take(5).toList();   // Select new 5 random flags

  for(var flag in selectedFlags) {
    List<String> imageAnswers = flags.map((f) => f['imagePath']!).toList()..shuffle();
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
    ));
  }

  questionList.shuffle();

  return questionList;

}