import 'package:flutter/material.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';

class DatasetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        title: Text("Baza Flag"),
      ),
      body: Container(
        color: kBackgroundColor3,
        child: ListView.builder(
          itemCount: flags.length,
          itemBuilder: (context, index) {
            final flag = flags[index];
            final flagName = flag['name']!.toUpperCase();
            return ListTile(
              leading: Image.asset(flag['imagePath']!),
              title: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 16.0, 
                  ),
                  children: [
                    TextSpan(
                      text: flagName[0],
                      style: TextStyle(
                          color: kRedColor,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: flagName.substring(1),
                        style: TextStyle(
                            color: kBackgroundColor2,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "English: ${flagMessages[flag['name']]!['en']}",
                    style: TextStyle(color: kBlackColor),
                  ),
                  Text(
                    "Polski: ${flagMessages[flag['name']]!['pl']}",
                    style: TextStyle(color: kBlackColor),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
