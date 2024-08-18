import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/transmit_controller.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignalController _signalController = Get.find<SignalController>();
    return Stack(
      children: [
        Container(
          color: kBackgroundColor2,
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
                            color: Color.fromARGB(255, 157, 236, 252),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            _signalController.signalList[
                                    _signalController.questionNumber.value - 1]
                                ['message']['pl'],
                            style: TextStyle(color: kBlackColor, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Wybrane flagi: ",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 14,
                              )),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Container(
                        decoration: BoxDecoration(
                          color: _signalController.answeredCorrectly.value
                              ? kSlightGreenColor
                              : kWhiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        constraints: BoxConstraints(
                          minWidth: 300,
                          minHeight: 60,
                          maxWidth: 380,
                        ),
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: List.generate(
                              _signalController.selectedFlags.length, (index) {
                            final flagName = _signalController.selectedFlags[index];
                            final flag = flags.firstWhere((f) => f['name'] == flagName);
                            final isCorrect = _signalController
                                    .answerChecked.value &&
                                _signalController.selectedFlagsCorrect.length >
                                    index &&
                                _signalController.selectedFlagsCorrect[index];

                            return Stack(
                              children: [
                                Image.asset(
                                  flag['imagePath']!,
                                  width: 40,
                                  height: 40,
                                ),
                                if (_signalController.answerChecked.value &&
                                    !isCorrect)
                                  Positioned.fill(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/x.png',
                                          width: 35,
                                          height: 35,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: kDefaultPadding),
                            child: IconButton(
                              icon: Icon(Icons.thumb_up_alt_rounded, color: kWhiteColor),
                              onPressed: _signalController.answerChecked.value
                                  ? null
                                  : () {
                                      _signalController.checkAnswer();
                                    },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: kDefaultPadding),
                            child: IconButton(
                              icon: Icon(Icons.backspace, color: kWhiteColor),
                              onPressed: _signalController.answerChecked.value
                                  ? null
                                  : () {
                                      _signalController.removeLastFlag();
                                    },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Container(
                        height: 1.5,
                        color: Color.fromARGB(255, 53, 99, 140),
                      ),
                      Container(
                        height: 6,
                        color: Color.fromARGB(255, 44, 121, 183),
                      ),
                      Container(
                        height: 1.5,
                        color: Color.fromARGB(255, 121, 200, 237),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Color.fromARGB(255, 211, 211, 211),
                          child: Center(
                            child: Stack(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: kDefaultPadding),
                                    child: Wrap(
                                      spacing: 15,
                                      runSpacing: 18,
                                      children: flags.map((flag) {
                                        return GestureDetector(
                                          onTap: _signalController.answerChecked.value
                                              ? null
                                              : () => _signalController.selectFlag(flag['name']!),
                                          child: Image.asset(
                                            flag['imagePath']!,
                                            width: 60,
                                            height: 60,
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Obx(() {
                                  if (_signalController.showNextButton.value) {
                                    return Positioned(
                                      bottom: 140.0,
                                      right: 60.0,
                                      child: InkWell(
                                        onTap: () {
                                          _signalController.nextSignal();
                                          _signalController.showNextButton.value = false;
                                        },
                                        child: Container(
                                          width: 240,
                                          height: 70,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [Color.fromARGB(255, 178, 206, 255), Color.fromARGB(255, 34, 185, 255)],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                            borderRadius: BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(255, 0, 55, 100),
                                                blurRadius: 45,
                                                offset: Offset(0, 15), 
                                              ),
                                            ],
                                          ),
                                          child: Text(
                                            "Następne",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Positioned(
                                      bottom: 140.0,
                                      right: 60.0,
                                      child: SizedBox(width: 240, height: 70),
                                    );;
                                  }
                                }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
