import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/signal_menu_controller.dart';
import 'package:signal_flags_app/display/export/export_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/display/transmit/transmit_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class SignalMenuScreen extends StatelessWidget {
  final SignalMenuController _controller = Get.put(SignalMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 5),
                    Center(
                      child: Text(
                        'signal_menu.title'.tr,
                        style: TextStyle(
                          color: kHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const Spacer(flex: 5),
                    buildButton('signal_menu.read'.tr, () => QuizScreen(mode: 'messages', showProgressBar: _controller.showProgressBar.value, flagCount: _controller.selectedFlagCount.value,)),
                    const SizedBox(height: 18),
                    buildButton('signal_menu.transmit'.tr, () => TransmitScreen(flagCount: _controller.selectedFlagCount.value,)),
                    const SizedBox(height: 18),
                    // Obx(() => Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "Czasomierz",
                    //       style: TextStyle(color: kWhiteColor, fontSize: 25),
                    //     ),
                    //     SizedBox(width: 10),
                    //     Transform.scale(
                    //       scale: 1.5,
                    //       child: Checkbox(
                    //         value: _controller.showProgressBar.value,
                    //         onChanged: (value) {
                    //           _controller.toggleProgressBar(value!);
                    //         },
                    //         activeColor: kSecondaryColor,
                    //         checkColor: kBlackColor,
                    //       ),
                    //     ),
                    //   ],
                    // )),
                    // const SizedBox(height: 8),
                    Obx(() => Column(
                      children: [
                            Text(
                              'signal_menu.category'.tr,
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 22),
                            ),
                            Center(
                              child: DropdownButton<int>(
                                value: _controller.selectedFlagCount.value,
                                items: [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Row(
                                      children: [
                                        Icon(Icons.flag),
                                        SizedBox(width: 8),
                                        Text('single_flags'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Row(
                                      children: [
                                        Icon(Icons.warning),
                                        SizedBox(width: 8),
                                        Text('distress_emergency'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Row(
                                      children: [
                                        Icon(Icons.place),
                                        SizedBox(width: 8),
                                        Text('position_rescue'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 4,
                                    child: Row(
                                      children: [
                                        Icon(Icons.healing),
                                        SizedBox(width: 8),
                                        Text('casualties_damages'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 5,
                                    child: Row(
                                      children: [
                                        Icon(Icons.navigation), 
                                        SizedBox(width: 8),
                                        Text('navigation_hydrography'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 6,
                                    child: Row(
                                      children: [
                                        Icon(Icons.directions_boat),
                                        SizedBox(width: 8),
                                        Text('maneuvers'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 7,
                                    child: Row(
                                      children: [
                                        Icon(Icons.miscellaneous_services),
                                        SizedBox(width: 8),
                                        Text('miscellaneous'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 8,
                                    child: Row(
                                      children: [
                                        Icon(Icons.cloud),
                                        SizedBox(width: 8),
                                        Text('meteorology_weather'.tr),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 9,
                                    child: Row(
                                      children: [
                                        Icon(Icons.spatial_audio_off),
                                        SizedBox(width: 8),
                                        Text('communications'.tr),
                                      ],
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  if (value != null) {
                                    _controller.updateFlagCount(value);
                                  }
                                },
                                alignment: Alignment.center,
                                icon: Icon(Icons.keyboard_arrow_up),
                                underline: Container(
                                  alignment:
                                      Alignment.center,
                                  child: Container(
                                    width:
                                        260,
                                    height:
                                        2, 
                                    color:
                                        kWhiteColor, 
                                  ),
                                ),
                                dropdownColor: kBackgroundColor2,
                                style: TextStyle(
                                    color: kBackgroundColor,
                                    fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )),
                    const SizedBox(height: 18),
                    buildButton('signal_menu.create_custom'.tr, () => ExportScreen()),
                    const Spacer(flex: 5),
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
