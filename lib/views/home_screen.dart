import 'package:flutter/material.dart';
import 'package:signal_flags_app/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 31, 44, 61),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1),
                Text(
                  "Nauka Sygnałów Flagowych",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ) ??
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text("Wybierz tryb"),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.6),
                    decoration: BoxDecoration(
                        gradient: kButtonGradient,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "Nadanie sygnału",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.black), //only ? safe call
                    ),
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
