import 'package:flutter/material.dart';
import 'package:signal_flags_app/display/quiz/components/answer.dart';
import 'package:signal_flags_app/models/questions.dart';
import 'package:signal_flags_app/utils/constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key, required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kBorderColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kWhiteColor),
          ),
          SizedBox(height: kDefaultPadding),
          Answer(),
          Answer(),
          Answer(),
          Answer(),
        ],
      ),
    );
  }
}