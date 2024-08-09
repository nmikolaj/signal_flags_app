import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:stroke_text/stroke_text.dart';

final buttonTextStyle = TextStyle(
  color: kWhiteColor,
  fontSize: 24,
  fontWeight: FontWeight.w500,
);

Widget buildButton(String text, Widget Function() getScreen) {
  return InkWell(
    onTap: () => Get.to(getScreen),
    child: Center(
      child: Container(
        width: Get.width * 0.80,
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.6),
        decoration: const BoxDecoration(
          gradient: kButtonGradient,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 57, 125, 181),
              blurRadius: 9,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: StrokeText(
          text: text,
          textStyle: buttonTextStyle,
          strokeWidth: 4,
          strokeColor: Color.fromARGB(255, 60, 139, 224),
        ),
      ),
    ),
  );
}
