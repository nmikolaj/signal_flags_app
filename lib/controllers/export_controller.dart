import 'package:get/get.dart';
import 'package:signal_flags_app/models/flags.dart';

class ExportController extends GetxController {
  RxList<String> _selectedFlags = <String>[].obs;
  List<String> get selectedFlags => _selectedFlags;

  void selectFlag(String flag) {
    _selectedFlags.add(flag);
  }

  void removeLastFlag() {
    if (_selectedFlags.isNotEmpty) {
      _selectedFlags.removeLast();
    }
  }

  void exportMessage() {
    // Logic for exporting flags as image
    // To try: Screenshot plugin, RenderRepaintBoundary, rendering.dart
  }
}
