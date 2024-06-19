import 'package:flutter/material.dart';
import 'package:signal_flags_app/models/flags.dart';

class DatasetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baza Flag"),
      ),
      body: ListView.builder(
        itemCount: flags.length,
        itemBuilder: (context, index) {
          final flag = flags[index];
          return ListTile(
            leading: Image.asset(flag['imagePath']!),
            title: Text(flag['name']!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("English: ${flagMessages[flag['name']]!['en']}"),
                Text("Polski: ${flagMessages[flag['name']]!['pl']}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
