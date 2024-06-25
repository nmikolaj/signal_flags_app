import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/utils/constants.dart';

final buttonTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.w500,
);

Widget buildButton(String text, Widget Function() getScreen) {
  return InkWell(
    onTap: () => Get.to(getScreen),
    child: Center(
      child: Container(
        width: Get.width * 0.82,
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
    ),
  );
}
