import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedLanguage = 'en'.obs;

  void setLanguage(String lang) {
    selectedLanguage.value = lang;
  }
}
