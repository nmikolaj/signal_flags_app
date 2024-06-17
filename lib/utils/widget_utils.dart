import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/utils/constants.dart';

final buttonTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.normal,
);

Widget buildButton(String text, Widget Function() getScreen) { // direct navigation to widget
  return InkWell(
    onTap: () => Get.to(getScreen),
    child: Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(kDefaultPadding * 0.6),
      decoration: BoxDecoration(
        gradient: kButtonGradient,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        text,
        style: buttonTextStyle,
      ),
    ),
  );
}



