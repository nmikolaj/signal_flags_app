import 'package:flutter/material.dart';

const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kGreenColor = Colors.green;
const kRedColor = Colors.red;
const kBackgroundColor = Color.fromARGB(255, 128, 173, 160);
const kSecondaryColor = Color.fromARGB(255, 107, 136, 231);
const kBorderColor = Color.fromARGB(255, 63, 79, 104);

const kBackgroundGradient = LinearGradient(
  colors: [Color.fromARGB(255, 30, 19, 187), Color.fromARGB(255, 11, 132, 231)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const kButtonGradient = LinearGradient(
  colors: [Color.fromARGB(255, 231, 198, 11), Color.fromARGB(255, 255, 173, 20)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;