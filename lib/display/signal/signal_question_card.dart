import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/quiz/components/answer.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';

class SignalQuestionCard extends StatelessWidget {
  const SignalQuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find<QuestionController>();
    return Container(
      margin: const EdgeInsets.only(
        top: 0,
        right: kDefaultPadding,
        left: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding/2),
          if (question.flags.isNotEmpty)
            Wrap(
              spacing: kDefaultPadding,
              children: question.flags
                  .map((flagName) => Image.asset(
                      flags.firstWhere(
                          (flag) => flag['name'] == flagName)['imagePath']!,
                      height: 70,
                      width: 70))
                  .toList(),
            ),
          const SizedBox(height: kDefaultPadding/2),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  question.answers.length,
                  (index) => Answer(
                    index: index,
                    text: question.answers[index],
                    imagePath: '',
                    press: () => controller.checkAnswer(question, index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
