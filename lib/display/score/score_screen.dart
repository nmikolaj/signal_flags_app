import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';

class ScoreScreen extends StatelessWidget {
  final int correctAnswers;
  final int wrongAnswers;
  final int totalQuestions;

  const ScoreScreen({
    Key? key,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double font_size = screenWidth * 0.1;
    int passedAnswers = totalQuestions - correctAnswers - wrongAnswers;

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
                "${(correctAnswers / totalQuestions * 100).toStringAsFixed(1)}%", //sc test
                style: TextStyle(
                  color: Colors.white,
                  fontSize: font_size,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStat("Dobre", correctAnswers, Colors.green),
                        _buildStat("Błędne", wrongAnswers, Colors.red),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStat("Pominięte", passedAnswers, Colors.blue),
                        _buildStat("Wszystkie", totalQuestions, Colors.orange),
                      ],
                    ),
                  ],
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

  Widget _buildStat(String title, int value, Color color) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Text(
            value.toString(),
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
