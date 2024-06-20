import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/transmit_controller.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignalController _signalController = Get.put(SignalController());
    return Stack(children: [
      Container(
        color: kBackgroundColor,
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(
                () => Text.rich(
                  TextSpan(
                    text: "Sygnał ${_signalController.questionNumber.value}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/${_signalController.signalList.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(thickness: 1.5, color: kBackgroundColor),
            SizedBox(height: kDefaultPadding),
            Expanded(
              child: Obx(
                () => Column(
                  children: [
                    Text(
                      _signalController.signalList[
                              _signalController.questionNumber.value - 1]
                          ['message']['pl'],
                      style: TextStyle(color: kWhiteColor, fontSize: 20),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      "Wybrane flagi: ${_signalController.selectedFlags.join(", ")}",
                      style: TextStyle(color: kWhiteColor, fontSize: 16),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _signalController.checkAnswer();
                          // TODO answer logic 
                      },
                      child: Text("Potwierdź wiadomość"),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Wrap(
                      spacing: 10,
                      children: flags.map((flag) {
                        return GestureDetector(
                          onTap: () => _signalController.selectFlag(flag['name']!),
                          child: Image.asset(
                            flag['imagePath']!,
                            width: 50,
                            height: 50,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
