import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/display/score/score_screen.dart';
import 'package:signal_flags_app/display/transmit/transmit_screen.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/utils/translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Signal Flags App',
      theme: ThemeData.dark(),
      translations: MyTranslations(), 
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: HomeScreen(),
    );
  }
}
