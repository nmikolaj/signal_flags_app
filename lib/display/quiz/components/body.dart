import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signal_flags_app/utils/constants.dart';

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
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 63, 79, 104), width: 3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) => Container(
                        width: constraints.maxWidth * 0.5, //max width taken from LayoutBuilder
                        decoration: BoxDecoration(
                          gradient: kButtonGradient,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("10 sec")],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
