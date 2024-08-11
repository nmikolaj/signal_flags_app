import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/dataset/dataset_screen.dart';
import 'package:signal_flags_app/display/quiz/components/question_card.dart';
import 'package:signal_flags_app/display/signal/signal_question_card.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {

  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QuestionController _questionController = Get.find<QuestionController>();
    return Stack(children: [
      Container(
        color: kBackgroundColor,
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(_questionController.showProgressBar) Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(),
            ),
            const SizedBox(height: kDefaultPadding),
            const Divider(thickness: 1.5, color: kBackgroundColor),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
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
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: IconButton(
                        icon: Icon(Icons.menu_book_rounded, color: kSecondaryColor, size: 40,),
                        onPressed: () {
                          Get.to(() => DatasetScreen())!.then((_) {
                            _questionController.update();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 1.5, color: kBackgroundColor),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged:
                    _questionController.updateQuestionNumber,
                itemCount: _questionController.questionList.length,
                itemBuilder: (context, index) {
                  if (_questionController.mode == 'messages') {
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
