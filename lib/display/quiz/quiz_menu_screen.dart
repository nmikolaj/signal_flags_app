import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class QuizMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: kBackgroundGradient),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 3),
                    Text(
                      "Quiz",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 44,
                      ),
                    ),
                    Text(
                      "Wybierz tryb",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 22,
                      ),
                    ),
                    Spacer(flex: 2),
                    buildButton("Klasyczne", () => QuizScreen(mode: "normal")),
                    SizedBox(height: 18),
                    buildButton("Numeryczne", () => QuizScreen(mode: 'numeric')),
                    SizedBox(height: 18),
                    buildButton("Sygnały", () => QuizScreen(mode: 'messages')),
                    Spacer(flex: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}