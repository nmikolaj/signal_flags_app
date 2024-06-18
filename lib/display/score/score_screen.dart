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
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(fit: StackFit.expand, children: [
      Column(
        children: [
          Spacer(flex: 4),
          Text(
            "Wynik",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kSecondaryColor),
          ),
          Spacer(),
          Text(
            "${_controller.correctAnsCount}/${_controller.questionList.length}",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kSecondaryColor),
          ),
          Spacer(flex: 3),
          ElevatedButton(
              onPressed: () {
                Get.delete<QuestionController>(); // unneded as Get.offAll removes it bc QuestionController is not marked as permanent in dependency tree
                Get.offAll(() => HomeScreen());
              },
              child: Text("Powrót"),  
            ),
          Spacer(flex: 1),
        ],
      )
    ]));
  }
}
