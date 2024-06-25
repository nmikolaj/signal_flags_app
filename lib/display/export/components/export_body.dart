import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/export_controller.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:signal_flags_app/utils/constants.dart';

class ExportBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExportController _controller = Get.put(ExportController());
    return Stack(children: [
      Container(
        color: kBackgroundColor,
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kDefaultPadding),
            Expanded(
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBackgroundColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "SIGNAL",
                          style: TextStyle(color: kWhiteColor, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Wybrane flagi: ",
                            style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 14,
                            )),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Container(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      constraints: BoxConstraints(
                        minWidth: 300,
                        minHeight: 60,
                        maxWidth: 380,
                      ),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: _controller.selectedFlags.map((flagName) {
                          final flag = flags.firstWhere((f) => f['name'] == flagName);
                          return Image.asset(
                            flag['imagePath']!,
                            width: 40,
                            height: 40,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: kDefaultPadding),
                          child: IconButton(
                            icon: Icon(Icons.thumb_up_alt_rounded, color: kWhiteColor),
                            onPressed: () {
                              _controller.submitSelection();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: kDefaultPadding),
                          child: IconButton(
                            icon: Icon(Icons.backspace, color: kWhiteColor),
                            onPressed: () {
                              _controller.removeLastFlag();
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Container(
                      height: 1.5,
                      color: Colors.blue.shade300,
                    ),
                    Container(
                      height: 6,
                      color: Color.fromARGB(255, 26, 119, 196),
                    ),
                    Container(
                      height: 1.5,
                      color: Colors.indigo.shade700,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding),
                          child: Wrap(
                            spacing: 15,
                            runSpacing: 18,
                            children: flags.map((flag) {
                              return GestureDetector(
                                onTap: () => _controller.selectFlag(flag['name']!),
                                child: Image.asset(
                                  flag['imagePath']!,
                                  width: 60,
                                  height: 60,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
