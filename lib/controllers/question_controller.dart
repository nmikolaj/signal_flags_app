import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation; // instead this.animation

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

      // to prevent memory leaks, pnn
    @override
    void onClose() {
      _animationController.dispose();
      super.onClose();
    }

    super.onInit();
  }
}