import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/quiz/components/answer.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';

class ReceiveQuestionCard extends StatelessWidget {
  const ReceiveQuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find<QuestionController>(); // Get.find() as controller is already initialized in parent widget
    return Container(
      margin: const EdgeInsets.only(
        top: 0,
        right: kDefaultPadding,
        left: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      padding: const EdgeInsets.only(
        top: kDefaultPadding*2,
        right: kDefaultPadding*2,
        left: kDefaultPadding*2,
        bottom: 0,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          if (question.flags.isNotEmpty)
                  Wrap(
                    spacing: kDefaultPadding,
                    children: question.flags
                        .map((flagName) => Image.asset(
                            flags.firstWhere((flag) => flag['name'] == flagName)['imagePath']!,
                            height: 60,
                            width: 60))
                        .toList(),
                  ),
            const SizedBox(height: kDefaultPadding),
            ...List.generate(
              question.answers.length,
              (index) => Answer(
                index: index,
                text: question.answers[index],
                imagePath: '',
                press: () => controller.checkAnswer(question, index),
              ),
            ),
        ],
      ),
    );
  }
}
