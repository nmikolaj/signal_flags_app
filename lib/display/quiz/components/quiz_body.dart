import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/quiz/components/question_card.dart';
import 'package:signal_flags_app/display/signal/signal_question_card.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  final String mode;

  const Body({
    Key? key,
    required this.mode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController(mode));
    return Stack(children: [
      Container(
        color: kBackgroundColor,
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(),
            ),
            SizedBox(height: kDefaultPadding),
            Divider(thickness: 1.5, color: kBackgroundColor),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(
                () => Text.rich(
                  TextSpan(
                    text: "Pytanie ${_questionController.questionNumber.value}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/${_questionController.questionList.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(thickness: 1.5, color: kBackgroundColor),
            SizedBox(height: kDefaultPadding),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged:
                    _questionController.updateQuestionNumber,
                itemCount: _questionController.questionList.length,
                itemBuilder: (context, index) {
                  if (mode == 'messages') {
                    return SignalQuestionCard(
                        question: _questionController.questionList[index]);
                  } else {
                    return QuestionCard(
                        question: _questionController.questionList[index]);
                  }
                },
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
