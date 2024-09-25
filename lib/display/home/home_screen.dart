import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/language_controller.dart';
import 'package:signal_flags_app/display/about/about_screen.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            IconButton(
                              icon: const Icon(
                                Icons.info_outline_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () {
                                Get.to(() => AboutScreen());
                              },
                            ),
                          ],
                        ),
                        //SizedBox(height: 5),
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
                          right: 37,
                          child: Image.asset(
                            'assets/images/two_flags.png',
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 80.0),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'home_screen.title'.tr,
                                style: const TextStyle(
                                  color: kHeaderColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 44,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
