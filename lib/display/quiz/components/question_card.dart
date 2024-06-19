import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/quiz/components/answer.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.only(
        top: 0,
        right: kDefaultPadding,
        left: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      padding: EdgeInsets.only(
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
          question.isFlagQuestion
              ? Image.asset(question.flagImage ?? '',
                  height: 100, width: 100)
              : Text(
                  question.question,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: kBlackColor),
                ),
          SizedBox(height: kDefaultPadding),
          ...List.generate(
            question.answers.length,
            (index) => Answer(
              index: index,
              text: question.isFlagQuestion ? question.answers[index] : '',
              imagePath: !question.isFlagQuestion ? question.answers[index] : '',
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
