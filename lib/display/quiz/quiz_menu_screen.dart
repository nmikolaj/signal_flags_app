import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/flags_menu_controller.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/build_button.dart';

class FlagsMenuScreen extends StatelessWidget {
  final FlagsMenuController _controller = Get.put(FlagsMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 4),
                    Center(
                      child: Text(
                        'flags'.tr,
                        style: const TextStyle(
                          color: kHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const Spacer(flex: 6),
                    BuildButtonWidget(text: 'quiz.letter'.tr, getScreen: () => QuizScreen(mode: "normal", showProgressBar: _controller.showProgressBar.value, flagCount: _controller.selectedFlagCount.value)),
                    const SizedBox(height: 18),
                    BuildButtonWidget(text: 'quiz.numeric'.tr, getScreen: () => QuizScreen(mode: 'numeric', showProgressBar: _controller.showProgressBar.value, flagCount: _controller.selectedFlagCount.value)),
                    const SizedBox(height: 18),
                    const Spacer(flex: 1),
                    Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'timer'.tr,
                          style: TextStyle(color: kWhiteColor, fontSize: 25),
                        ),
                        SizedBox(width: 10),
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: _controller.showProgressBar.value,
                            onChanged: (value) {
                              _controller.showProgressBar.value = value!;
                            },
                            activeColor: kSecondaryColor,
                            checkColor: kBlackColor,
                          ),
                        ),
                      ],
                    )),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
