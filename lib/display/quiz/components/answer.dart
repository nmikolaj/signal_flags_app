import 'package:flutter/material.dart';
import 'package:signal_flags_app/utils/constants.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kBlackColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1answer",
            style: TextStyle(color: kBlackColor, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
