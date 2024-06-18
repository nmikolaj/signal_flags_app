import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    double screenWidth = MediaQuery.of(context).size.width;
    double font_size = screenWidth * 0.1;

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: kBackgroundGradient), // gradient is defined as const too
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
              "${_controller.correctAnsCount}/${_controller.questionList.length}",
              style: TextStyle(
                color: Colors.white,
                fontSize: font_size,
              ),
            ),
            const Spacer(flex: 3),
            ElevatedButton(
              onPressed: () {
                Get.delete<
                    QuestionController>(); // unneded as Get.offAll removes it bc QuestionController is not marked as permanent in dependency tree
                Get.offAll(() => HomeScreen());
              },
              child: Text("Powrót"),
            ),
            const Spacer(flex: 1),
          ],
        )
      ]),
    ));
  }
}
