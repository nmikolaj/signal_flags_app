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
    int percentage = ((correctAnswers / totalQuestions) * 100).toInt();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kWhiteColor),
          onPressed: () {
            Get.offAll(() => HomeScreen());
          },
        ),
      ),
      body: Stack(

        fit: StackFit.expand,

        children: [
          Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sea.jpg'),
            fit: BoxFit.cover,
          ),
        ),
          ),
          Column(
            children: [
              const Spacer(flex: 4),
              Text(
                "Wynik",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: font_size,
                ),
              ),
              const Spacer(),
              Text(
                "$percentage%", //sc test
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: font_size * 1.4,
                  fontWeight: FontWeight.w500,
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
              const Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String title, int value, Color color) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color.withOpacity(0.6),
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
