import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/utils/constants.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
    required this.index,
    required this.text,
    required this.press,
    this.imagePath = '',
  });
  final int index;
  final String text;
  final VoidCallback press;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {
        Color getRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return kGreenColor;
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns) {
              return kRedColor;
            }
          }
          return kBackgroundColor;
        }

        Color getBackgroundColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return kSlightGreenColor;
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns) {
              return kSlightRedColor;
            }
          }
          return kButtonColor;
        }

        double getBorderWidth() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns ||
                index == qnController.selectedAns) {
              return 2.0;
            }
          }
          return 1.0;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border:
                  Border.all(color: getRightColor(), width: getBorderWidth()),
              borderRadius: BorderRadius.circular(20),
              color: getBackgroundColor(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imagePath.isNotEmpty
                    ? Image.asset(imagePath, height: 60, width: 60) // TODO softcode image size and square layout
                    : Text(
                        "$text",
                        style: TextStyle(color: kBlackColor, fontSize: 18),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
