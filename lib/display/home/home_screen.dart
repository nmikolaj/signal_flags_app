import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/dataset/dataset_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_menu_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/display/signal/signal_menu_screen.dart';
import 'package:signal_flags_app/display/transmit/transmit_screen.dart';
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
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 5),
                    Text(
                      "Sygnały Flagowe",
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
                    Spacer(flex: 4),
                    buildButton("Flagi", () => FlagsMenuScreen()), // widget instantiated only when user taps the button (GetX recommendation)
                    SizedBox(height: 18),
                    buildButton("Sygnały", () => SignalMenuScreen()),
                    SizedBox(height: 18),
                    buildButton("Nauka", () => DatasetScreen()),
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
