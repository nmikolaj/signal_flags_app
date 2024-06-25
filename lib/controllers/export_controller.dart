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

  void submitSelection() {
    // Functionality to handle flag selection submission
    // Placeholder for future implementation
  }
}
