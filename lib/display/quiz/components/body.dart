import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            children: [
              ProgressBar(),
              Text.rich(
                TextSpan(
                  text: "testtt",
                  children: [],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}

