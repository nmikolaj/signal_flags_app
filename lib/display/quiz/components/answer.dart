import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/utils/constants.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key, required this.index, required this.text, required this.press,
  });
  final int index;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {

        Color getRightColor() {
          if(qnController.isAnswered) {
            if(index == qnController.correctAns && qnController.selectedAns == qnController.correctAns) {
              return kGreenColor;
            } else if (index == qnController.selectedAns && qnController.selectedAns != qnController.correctAns) {
              return kRedColor;
            }
          }
          return kBlackColor;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: getRightColor()),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${index + 1} $text",
                  style: TextStyle(color: getRightColor(), fontSize: 15),
                ), 
              ],
            ),
          ),
        );
      }
    );
  }
}
