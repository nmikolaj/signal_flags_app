import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';

class ScoreScreen extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;

  const ScoreScreen({
    Key? key,
    required this.correctAnswers,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double font_size = screenWidth * 0.1;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kBackgroundGradient,
        ),
        child: Stack(fit: StackFit.expand, children: [
          Column(
            children: [
              const Spacer(flex: 4),
              Text(
                "Wynik",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: font_size,
                ),
              ),
              const Spacer(),
              Text(
                "${(correctAnswers / totalQuestions * 100).toStringAsFixed(1)}%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: font_size,
                ),
              ),
              const Spacer(flex: 3),
              ElevatedButton(
                onPressed: () {
                  //Get.delete<QuestionController>(); Get.offAll already removes it bc QuestionController is not marked as permanent in dependency tree
                  Get.offAll(() => HomeScreen());
                },
                child: Text("Powrót"),
              ),
              const Spacer(flex: 1),
            ],
          )
        ]),
      ),
    );
  }
}
