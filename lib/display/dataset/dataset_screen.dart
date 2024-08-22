import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/controllers/dataset_controller.dart';

class DatasetScreen extends StatelessWidget {
  final DatasetController controller = Get.put(DatasetController());

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> flagMap = {
      for (var flag in flags) flag['name']!: flag
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        title: const Text("Baza Flag"),
        actions: [
          Obx(() {
            if (controller.selectedMode.value == 2) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<int>(
                  value: controller.selectedCategoryIndex.value,
                  items: const [
                    DropdownMenuItem(value: 0, child: Text('Distress-Emergency')),
                    DropdownMenuItem(value: 1, child: Text('Position-Rescue')),
                    DropdownMenuItem(value: 2, child: Text('Casualties-Damages')),
                    DropdownMenuItem(value: 3, child: Text('Navigation-Hydrography')),
                    DropdownMenuItem(value: 4, child: Text('Maneuvers')),
                    DropdownMenuItem(value: 5, child: Text('Miscellaneous')),
                    DropdownMenuItem(value: 6, child: Text('Meteorology-Weather')),
                    DropdownMenuItem(value: 7, child: Text('Communications')),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      controller.updateCategory(value);
                    }
                  },
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          }),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              final filteredMessages = controller.filteredMessages;

              return ListView.builder(
                itemCount: filteredMessages.length + 1, // +1 for numeric flags/SizedBox.shrink()
                itemBuilder: (context, index) {
                  if (index == filteredMessages.length) {
                    // If last item, show numeric flags
                    if (controller.selectedMode.value == 1) {
                      final numericFlags = controller.numericFlags;
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Wrap(
                          spacing: 18.0,
                          children: numericFlags.map((flag) {
                            return Column(
                              children: [
                                Image.asset(flag['imagePath']!,
                                    width: 70, height: 60),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: flag['name']![0],
                                        style:
                                            const TextStyle(color: kRedColor),
                                      ),
                                      TextSpan(
                                        text: flag['name']!.substring(1),
                                        style: const TextStyle(
                                            color: kBackgroundColor2),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  }

                  final message = filteredMessages[index];
                  print(message['flags']);
                  print(message['subcategory']);

                  // Check if it is a subcategory header
                  if (message.containsKey('subcategory')) {
                    //print(message['subcategory']);
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                      child: Text(
                        message['subcategory'],
                        style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: kBackgroundColor2,
                        ),
                      ),
                    );
                  }

                  // Regular signal rendering
                  final flagNames = message['flags']
                      .map((flag) => flagMap[flag]!['name'])
                      .join(", ");

                  if (controller.selectedMode.value == 1) {
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
                                  color: kRedColor,
                                  fontWeight: FontWeight.bold),
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
                  } else if (controller.selectedMode.value == 2) {
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
                      title: Text(
                        flagNames,
                        style: TextStyle(color: kBlackColor),
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
                              padding: const EdgeInsets.only(
                                  right: 4.0, bottom: 4.0),
                              child: Image.asset(
                                flagMap[flag]!['imagePath']!,
                                width: 40,
                                height: 40,
                              ),
                            ))
                        .toList();

                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 16.0, left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                children: flagImages,
                              ),
                              IconButton(
                                icon: Icon(Icons.close, color: kRedColor),
                                onPressed: () { controller.deleteCustomMessage(index);
                                }
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            message['message'],
                            style: const TextStyle(
                                color: kBlackColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(color: kBackgroundColor, thickness: 2.0)
                        ],
                      ),
                    );
                  }
                },
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.selectedMode.value - 1,
            onTap: (index) {
              controller.updateMode(index + 1);
            },

            backgroundColor: kBackgroundColor2,
            selectedItemColor: Color.fromARGB(255, 87, 213, 255),
            unselectedItemColor: Color.fromARGB(255, 226, 226, 226),
            
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_flags_rounded),
                label: "Pojedyncze",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined),
                label: "Wiele",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.install_mobile),
                label: "Własne",
              ),
            ],
          )),
    );
  }
}
