import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/score/score_screen.dart';
import 'package:signal_flags_app/models/questions.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation; // instead this.animation

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questionList = questions
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            answers: question['answers'],
            answer: question['correctAnswer']),
      )
      .toList();
  List<Question> get questionList => this._questionList;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _selectedAns; //TODO check late consequences
  int get selectedAns => this._selectedAns;

  late int _correctAns;
  int get correctAns => this._correctAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _correctAnsCount = 0;
  int get correctAnsCount => this._correctAnsCount;

  // called after widgets memory is allocated
  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update(); // update like setState
      });

    // After completion go to next question
    _animationController
        .forward()
        .whenComplete(() => nextQuestion()); // with () though it returns null

    _pageController = PageController();
    super.onInit();
  }

  // to prevent memory leaks
  @override
  void onClose() {
    _animationController.stop();
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _correctAnsCount++;

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
      Get.to(() => ScoreScreen());
    }
  }

  void updateQuestionNumber(int index) {
    _questionNumber.value = index + 1;
  }
}
