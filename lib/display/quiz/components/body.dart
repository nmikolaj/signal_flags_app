import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Stack(children: [
      Container(
        color: Color.fromARGB(255, 31, 44, 61),
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProgressBar(),
              SizedBox(height: kDefaultPadding),
              Divider(thickness: 1.5),
              Text.rich(
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
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              QuestionCard(),
            ],
          ),
        ),
      )
    ]);
  }
}
