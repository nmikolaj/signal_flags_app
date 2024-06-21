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
            SizedBox(height: kDefaultPadding),
            Expanded(
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBackgroundColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          _signalController.signalList[
                                  _signalController.questionNumber.value - 1]
                              ['message']['pl'],
                          style: TextStyle(color: kWhiteColor, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text("Wybrane flagi: ",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 14,
                        )),
                    SizedBox(height: kDefaultPadding / 2),
                    Container(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      constraints: BoxConstraints(
                        minWidth: 300,
                        minHeight: 50,
                        maxWidth: 380,
                      ),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: _signalController.selectedFlags.map((flagName) {
                          final flag = flags.firstWhere((f) => f['name'] == flagName);
                          return Image.asset(
                            flag['imagePath']!,
                            width: 40,
                            height: 40,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    ElevatedButton(
                      onPressed: () {
                        _signalController.checkAnswer();
                      },
                      child: Text("Potwierdź"),
                    ),
                    Divider(thickness: 1.5, color: kSecondaryColor),
                    SizedBox(height: kDefaultPadding),
                    Wrap(
                      spacing: 15,
                      runSpacing: 18,
                      children: flags.map((flag) {
                        return GestureDetector(
                          onTap: () =>
                              _signalController.selectFlag(flag['name']!),
                          child: Image.asset(
                            flag['imagePath']!,
                            width: 60,
                            height: 60,
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
