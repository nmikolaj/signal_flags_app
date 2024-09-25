import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/language_controller.dart';
import 'package:signal_flags_app/controllers/transmit_controller.dart';
import 'package:signal_flags_app/display/dataset/dataset_screen.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    SignalController _signalController = Get.find<SignalController>();
    final LanguageController _languageController = Get.find<LanguageController>();

    return Stack(
      children: [
        Container(
          color: kBackgroundColor,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text.rich(
                        TextSpan(
                          text: "transmit_body.signal".trParams({
                            'number': "${_signalController.questionNumber.value}"}),
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
                    Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu_book_rounded,
                        color: kSecondaryColor,
                        size: 40,
                      ),
                      onPressed: () {
                        Get.to(() => DatasetScreen());
                      },
                    ),
                  ),
                  ],
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
                                ['message'][_languageController.selectedLanguage.value],
                            style: TextStyle(color: kWhiteColor, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'chosen_flags'.tr,
                            style: const TextStyle(
                              color: kWhiteColor,
                              fontSize: 14,
                            ),
                          ),
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
                        color: Colors.blue.shade300,
                      ),
                      Container(
                        height: 6,
                        color: Color.fromARGB(255, 48, 135, 207),
                      ),
                      Container(
                        height: 1.5,
                        color: Colors.indigo.shade700,
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Color.fromARGB(255, 198, 198, 198),
                          child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                    vertical: kDefaultPadding,
                                  ),
                                  child: GridView.count(
                                    crossAxisCount: 5,
                                    mainAxisSpacing: 18,
                                    crossAxisSpacing: 15,
                                    children: flags.map((flag) {
                                      return GestureDetector(
                                        onTap: _signalController
                                                .answerChecked.value
                                            ? null
                                            : () => _signalController
                                                .selectFlag(flag['name']!),
                                        child: Image.asset(
                                          flag['imagePath']!,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }).toList(),
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
                                            gradient: kButtonGradient,
                                            borderRadius: BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(255, 0, 55, 100),
                                                blurRadius: 35,
                                                offset: Offset(0, 15), 
                                              ),
                                            ],
                                          ),
                                          child: StrokeText(
                                            text: "Następne",
                                            textStyle: TextStyle(
                                              color: kWhiteColor,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            strokeWidth: 3,
                                            strokeColor: Color.fromARGB(
                                                255, 60, 139, 224),
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Positioned(
                                      bottom: 140.0,
                                      right: 60.0,
                                      child: SizedBox(width: 240, height: 70),
                                    );
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
