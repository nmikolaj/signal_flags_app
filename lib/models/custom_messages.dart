import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CustomMessages {

  // Get file path
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // Get file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/ownMessages.json');
  }

  Future<List<Map<String, dynamic>>> readMessages() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
 
      final List<dynamic> jsonData = json.decode(contents);
      return jsonData.cast<Map<String, dynamic>>();
    } catch (e) {
      // If encountering error return empty list
      return [];
    }
  }

  Future<void> writeMessages(List<Map<String, dynamic>> messages) async {
    final file = await _localFile;

    final jsonString = json.encode(messages);
    await file.writeAsString(jsonString);
  }
}
