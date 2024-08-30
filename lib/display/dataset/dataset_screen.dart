import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/language_controller.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/controllers/dataset_controller.dart';

class DatasetScreen extends StatelessWidget {
  final DatasetController controller = Get.put(DatasetController());
  final LanguageController _languageController = Get.find<LanguageController>();
  final Map<String, Map<String, String>> flagMap = {
    for (var flag in flags) flag['name']!: flag
  };

  @override
  Widget build(BuildContext context) {
    final selectedLanguage = _languageController.selectedLanguage.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        title: Obx(() { 
          return controller.selectedMode.value != 2 ? Text('dataset_screen.flag_base'.tr) : const SizedBox.shrink();
        }),
        actions: [
          Obx(() {
            if (controller.selectedMode.value == 2) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: DropdownButton<int>(
                  value: controller.selectedCategoryIndex.value,
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          const Icon(Icons.warning),
                          const SizedBox(width: 8),
                          Text('distress_emergency'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          const Icon(Icons.place),
                          const SizedBox(width: 8),
                          Text('position_rescue'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Row(
                        children: [
                          const Icon(Icons.healing),
                          const SizedBox(width: 8),
                          Text('casualties_damages'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Row(
                        children: [
                          const Icon(Icons.navigation),
                          const SizedBox(width: 8),
                          Text('navigation_hydrography'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 5,
                      child: Row(
                        children: [
                          const Icon(Icons.directions_boat),
                          const SizedBox(width: 8),
                          Text('maneuvers'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 6,
                      child: Row(
                        children: [
                          const Icon(Icons.miscellaneous_services),
                          const SizedBox(width: 8),
                          Text('miscellaneous'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 7,
                      child: Row(
                        children: [
                          const Icon(Icons.cloud),
                          const SizedBox(width: 8),
                          Text('meteorology_weather'.tr),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 8,
                      child: Row(
                        children: [
                          const Icon(Icons.spatial_audio_off),
                          const SizedBox(width: 8),
                          Text('communications'.tr),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      controller.updateCategory(value);
                    }
                  },
                ),
              );
            } else {
              return const SizedBox.shrink();
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

              if (controller.selectedMode.value == 3 &&
                  filteredMessages.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'no_custom_signals'.tr,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              }
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

                  // Check if it is a subcategory header
                  if (message.containsKey('subcategory')) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Text(
                            message['subcategory'].toString().tr,
                            style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: kBackgroundColor2,
                            ),
                          ),
                        ),
                        const FractionallySizedBox(
                          widthFactor: 0.70, 
                          alignment: Alignment.centerLeft,
                          child: Divider(
                            color: kBackgroundColor2,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    );
                  }

                  // Regular signal rendering
                  final flagsFirstLetters = message['flags'].map((flag) => flagMap[flag]!['name']![0]).join();

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
                      subtitle: Text(
                        message['message'][selectedLanguage] ?? 'Message not available',
                        style: const TextStyle(color: kBlackColor),
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
                        flagsFirstLetters,
                        style: const TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        message['message'][selectedLanguage] ?? 'Message not available',
                        style: const TextStyle(color: kBlackColor),
                      ),
                    );
                  } else if (controller.selectedMode.value == 3) {
                    
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: MediaQuery.of(context).size.width - 60,
                                    ),
                                    child: Wrap(
                                      children: flagImages,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    color: kRedColor,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    controller.deleteCustomMessage(index);
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              message['message'],
                              style: const TextStyle(
                                  color: kBlackColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const FractionallySizedBox(
                            widthFactor: 0.85, 
                            alignment: Alignment.centerLeft, 
                            child: Divider(
                              color: kBackgroundColor2,
                              thickness: 1.0,
                            ),
                          ),
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
            
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.emoji_flags_rounded),
                label: 'dataset_screen.single'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.format_align_left_rounded),
                label: 'dataset_screen.multiple'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.add_to_home_screen),
                label: 'dataset_screen.custom'.tr,
              ),
            ],
          )),
    );
  }
}
