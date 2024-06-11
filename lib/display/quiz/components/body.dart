import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/display/quiz/components/question_card.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(children: [
      Container(
        color: Color.fromARGB(255, 31, 44, 61),
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
            Divider(thickness: 1.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text.rich(
                TextSpan(
                  text: "Pytanie 1",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                      text: "/10",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: kSecondaryColor),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1.5),
            SizedBox(height: kDefaultPadding),
            Expanded(
              child: PageView.builder(
                itemCount: _questionController.question_list.length,
                itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.question_list[index]),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
