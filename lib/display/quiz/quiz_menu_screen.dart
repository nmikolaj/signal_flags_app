import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class FlagsMenuScreen extends StatelessWidget {
  final RxBool _showProgressBar = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 4),
                    const Center(
                      child: Text(
                        "Flagi",
                        style: TextStyle(
                          color: kHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const Spacer(flex: 5),
                    buildButton("Klasyczne", () => QuizScreen(mode: "normal", showProgressBar: _showProgressBar.value)),
                    const SizedBox(height: 18),
                    buildButton("Numeryczne", () => QuizScreen(mode: 'numeric', showProgressBar: _showProgressBar.value)),
                    const SizedBox(height: 18),
                    const Spacer(flex: 1),
                    Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Czasomierz",
                          style: TextStyle(color: kWhiteColor, fontSize: 25),
                        ),
                        SizedBox(width: 10),
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: _showProgressBar.value,
                            onChanged: (value) {
                              _showProgressBar.value = value!;
                            },
                            activeColor: kSecondaryColor,
                            checkColor: kBlackColor,
                          ),
                        ),
                      ],
                    )),
                    const Spacer(flex: 3),
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
