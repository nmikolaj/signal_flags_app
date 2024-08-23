import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/signal_menu_controller.dart';
import 'package:signal_flags_app/display/export/export_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/display/transmit/transmit_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class SignalMenuScreen extends StatelessWidget {
  final SignalMenuController _controller = Get.put(SignalMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
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
                    const Spacer(flex: 5),
                    const Center(
                      child: Text(
                        "Sygnały",
                        style: TextStyle(
                          color: kHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const Spacer(flex: 5),
                    buildButton("Quiz", () => QuizScreen(mode: 'messages', showProgressBar: _controller.showProgressBar.value, flagCount: _controller.selectedFlagCount.value,)),
                    const SizedBox(height: 18),
                    buildButton("Nadanie sygnału", () => TransmitScreen(flagCount: _controller.selectedFlagCount.value,)),
                    const SizedBox(height: 18),
                    Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Czasomierz",
                          style: TextStyle(color: kWhiteColor, fontSize: 25),
                        ),
                        SizedBox(width: 10),
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: _controller.showProgressBar.value,
                            onChanged: (value) {
                              _controller.toggleProgressBar(value!);
                            },
                            activeColor: kSecondaryColor,
                            checkColor: kBlackColor,
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(height: 8),
                    Obx(() => Column(
                      children: [
                        Text(
                          "Kategoria: ",
                          style: TextStyle(color: kWhiteColor, fontSize: 24),
                        ),
                        Center(
                          child: DropdownButton<int>(
                                value: _controller.selectedFlagCount.value,
                                items: const [
                                  DropdownMenuItem(value: 1, child: Text('Single-Flags')),
                                  DropdownMenuItem(value: 2, child: Text('Distress-Emergency')),
                                  DropdownMenuItem(value: 3, child: Text('Position-Rescue')),
                                  DropdownMenuItem(value: 4, child: Text('Casualties-Damages')),
                                  DropdownMenuItem(value: 5, child: Text('Navigation-Hydrography')),
                                  DropdownMenuItem(value: 6, child: Text('Maneuvers')),
                                  DropdownMenuItem(value: 7, child: Text('Miscellaneous')),
                                  DropdownMenuItem(value: 8, child: Text('Meteorology-Weather')),
                                  DropdownMenuItem(value: 9, child: Text('Communications')),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    _controller.updateFlagCount(value);
                                  }
                                },
                                dropdownColor: kSecondaryColor,
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 24),
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(height: 18),
                    buildButton("Stwórz własny", () => ExportScreen()),
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
