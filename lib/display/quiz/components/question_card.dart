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
    QuestionController controller = Get.find<QuestionController>();
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
        bottom: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          question.isFlagQuestion
              ? Image.asset(question.flagImage ?? '',
                  height: 90, width: 90)
              : Text(
                  question.question,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: kBlackColor),
                ),
          if (!question.isFlagQuestion)
            const SizedBox(height: kDefaultPadding*3)
          else
            const SizedBox(height: kDefaultPadding),
          if (!question.isFlagQuestion)
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding/2,
              ),
              itemCount: question.answers.length,
              itemBuilder: (context, index) => Answer(
                index: index,
                text: '',
                imagePath: question.answers[index],
                press: () => controller.checkAnswer(question, index),
              ),
            )
          else
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
