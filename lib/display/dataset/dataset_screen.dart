import 'package:flutter/material.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';

class DatasetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> flagMap = {
      for (var flag in flags) flag['name']!: flag
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        title: const Text("Baza Flag"),
      ),
      body: Container(
        color: kWhiteColor, //kBackgroundColor3,
        child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index];
            final flagNames = message['flags']
                .map((flag) => flagMap[flag]!['name'])
                .join(", ");

            if (message['flags'].length == 1) {
              final flag = flagMap[message['flags'].first]!;
              return ListTile(
                leading: Image.asset(flag['imagePath']!),
                title: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 16.0),
                    children: [
                      TextSpan(
                        text: flag['name']![0],
                        style: const TextStyle(
                            color: kRedColor, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: flag['name']!.substring(1),
                        style: const TextStyle(
                            color: kBackgroundColor2,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "English: ${message['message']['en']}",
                      style: const TextStyle(color: kBlackColor),
                    ),
                    Text(
                      "Polski: ${message['message']['pl']}",
                      style: const TextStyle(color: kBlackColor),
                    ),
                  ],
                ),
              );
            } else {
              final flagImages = message['flags']
                  .map<Widget>((flag) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Image.asset(
                          flagMap[flag]!['imagePath']!,
                          width: 50,
                          height: 50,
                        ),
                  ))
                  .toList();
              return ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: flagImages,
                ),
                title: Text(flagNames, style: TextStyle(color: kBlackColor),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "English: ${message['message']['en']}",
                      style: const TextStyle(color: kBlackColor),
                    ),
                    Text(
                      "Polski: ${message['message']['pl']}",
                      style: const TextStyle(color: kBlackColor),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
