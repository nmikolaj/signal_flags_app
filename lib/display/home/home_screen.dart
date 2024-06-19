import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class HomeScreen extends StatelessWidget {
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
                    Spacer(flex: 1),
                    Text(
                      "Nauka Sygnałów Flagowych",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ) ??
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text("Wybierz tryb"),
                    Spacer(),
                    buildButton("Quiz", () => QuizScreen()), // widget is instantiated only when user taps the button (GetX recommendation)
                    SizedBox(height: 14),
                    buildButton("Sprawdź siebie!", () => QuizScreen()),
                    Spacer(flex: 2),
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
