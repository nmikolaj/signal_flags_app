import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/models/questions.dart';

class QuestionController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation; // instead this.animation

  List<Question> _questions = questions
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            answers: question['answers'],
            answer: question['correctAnswer']),
      )
      .toList();
  List<Question> get question_list => this._questions;
  
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
      AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() { 
        update(); // update like setState
      });

    _animationController.forward();

    // to prevent memory leaks, possibly unneeded
    @override
    void onClose() {
      _animationController.dispose();
      super.onClose();
    }

    super.onInit();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if(_correctAns == _selectedAns) _correctAnsCount++;

    _animationController.stop();
    update();
  }

}