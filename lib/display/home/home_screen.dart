import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.6),
                      decoration: BoxDecoration(
                          gradient: kButtonGradient,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "1. Fiszki 2. Sprawdź siebie! -Nadanie sygnału -Odbiór sygnału",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: Colors.black), //only ? safe call
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
