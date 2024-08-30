import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/models/custom_messages.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ExportController extends GetxController {
  final int maxFlags = 35;
  
  RxList<String> _selectedFlags = <String>[].obs;
  List<String> get selectedFlags => _selectedFlags;

  final CustomMessages flagsModel = CustomMessages();

  void selectFlag(String flag) {
    if (_selectedFlags.length < maxFlags) {
      _selectedFlags.add(flag);
    }
  }

  void removeLastFlag() {
    if (_selectedFlags.isNotEmpty) {
      _selectedFlags.removeLast();
    }
  }

  void exportMessage(WidgetsToImageController widgetsToImageController) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    final fileName = 'signal.png';
    final path = '$directory/$fileName';

    final imageBytes = await widgetsToImageController.capture();
    if (imageBytes != null) {
      final file = File(path);
      await file.writeAsBytes(imageBytes);
      shareImage(path);
    }
  }

  void shareImage(String path) {
    Share.shareFiles([path], text: 'Check out these flags!');
  }

  void addMessage() async {
    if (_selectedFlags.isEmpty) {
      Get.snackbar(
        'export_controller.no_flags'.tr,
        'export_controller.select_flag_warning'.tr,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(255, 98, 205, 255),
        duration: Duration(seconds: 4),
        borderRadius: 20,
        margin: EdgeInsets.all(20),
        colorText: Colors.white,
      );
      return;
    }
    String message = selectedFlags.map((flagName) => flagName[0]).join();
    List<Map<String, dynamic>> ownMessages = await flagsModel.readMessages();
    ownMessages.add({
      "flags": _selectedFlags.toList(),
      "message": message,
    });

    // Save updated ownMessages to local storage
    await flagsModel.writeMessages(ownMessages);

    _selectedFlags.clear();

    update();
  }

}
