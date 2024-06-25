import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/export_controller.dart';
import 'package:signal_flags_app/display/export/components/export_body.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';

class ExportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExportController _controller = Get.put(ExportController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kWhiteColor),
          onPressed: () {
            Get.delete<ExportController>();
            Get.offAll(() => HomeScreen());
          },
        ),
      ),
      body: ExportBody(),
    );
  }
}
