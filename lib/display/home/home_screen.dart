import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/language_controller.dart';
import 'package:signal_flags_app/display/dataset/dataset_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_menu_screen.dart';
import 'package:signal_flags_app/display/signal/signal_menu_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/build_button.dart';

class HomeScreen extends StatelessWidget {
  final LanguageController _languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Column(
                      children: [
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            var locale = Locale('en', 'US');
                            Get.updateLocale(locale);
                            _languageController.setLanguage('en');
                          },
                          child: Image.asset(
                            'assets/images/us_flag.png',
                            width: 45,
                            height: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            var locale = Locale('pl', 'PL');
                            Get.updateLocale(locale);
                            _languageController.setLanguage('pl');
                          },
                          child: Image.asset(
                            'assets/images/pl_flag.png',
                            width: 45,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Stack(
                      children: [
                        Positioned(
                          top: -5,
                          right: 30,
                          child: Image.asset(
                            'assets/images/two_flags.png',
                            width: 150, 
                            height: 150, 
                          ),
                        ),
                        Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Text(
                          'home_screen.title'.tr,
                          style: TextStyle(
                            color: kHeaderColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 44,
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        'home_screen.choose_mode'.tr,
                        style: const TextStyle(
                          color: kHeaderColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const Spacer(flex: 6),
                    BuildButtonWidget(text: 'home_screen.flag_names'.tr, getScreen: () => FlagsMenuScreen()), // widget instantiated only when user taps the button (GetX recommendation)
                    const SizedBox(height: 18),
                    BuildButtonWidget(text: 'home_screen.signals'.tr, getScreen: () => SignalMenuScreen()),
                    const SizedBox(height: 18),
                    BuildButtonWidget(text: 'home_screen.learning'.tr, getScreen: () => DatasetScreen()),
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
