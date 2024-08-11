import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/display/quiz/components/quiz_body.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  final String mode;
  final bool showProgressBar;
  final int flagCount; 

  const QuizScreen({super.key, required this.mode, required this.showProgressBar, required this.flagCount});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController(mode, showProgressBar, flagCount));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.delete<QuestionController>();
            Get.offAll(() => HomeScreen());
          },
        ),
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Pomiń")),
        ],
      ),
      body: const Body(),
    );
  }
}