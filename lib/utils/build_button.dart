import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class BuildButtonWidget extends StatelessWidget {
  final String text;
  final Widget Function() getScreen;

  BuildButtonWidget({required this.text, required this.getScreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(getScreen),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.80,
          alignment: Alignment.center,
          padding: EdgeInsets.all(kDefaultPadding * 0.6),
          decoration: const BoxDecoration(
            gradient: kButtonGradient,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 61, 136, 197),
                blurRadius: 9,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: StrokeText(
            text: text,
            textStyle: TextStyle(
              color: kWhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            strokeWidth: 3,
            strokeColor: Color.fromARGB(255, 60, 139, 224),
          ),
        ),
      ),
    );
  }
}
