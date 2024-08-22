import 'package:get/get.dart';
import 'package:signal_flags_app/models/custom_messages.dart';
import 'package:signal_flags_app/models/flags.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ExportController extends GetxController {
  RxList<String> _selectedFlags = <String>[].obs;
  List<String> get selectedFlags => _selectedFlags;

  final CustomMessages flagsModel = CustomMessages();

  void selectFlag(String flag) {
    _selectedFlags.add(flag);
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
