import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/utils/constants.dart';

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
            "Score",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kSecondaryColor),
          ),
          Spacer(),
          Text(
            "${_controller.correctAnsCount}/${_controller.question_list.length}",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kSecondaryColor),
          ),
          Spacer(flex: 4),
        ],
      )
    ]));
  }
}
