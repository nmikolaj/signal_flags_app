import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/transmit_controller.dart';
import 'package:signal_flags_app/display/home/home_screen.dart';
import 'package:signal_flags_app/display/transmit/components/transmit_body.dart';
import 'package:signal_flags_app/utils/constants.dart';

class TransmitScreen extends StatelessWidget {
  final int flagCount;

  const TransmitScreen({super.key, required this.flagCount});

  @override
  Widget build(BuildContext context) {
    SignalController _controller = Get.put(SignalController(flagCount: flagCount));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kWhiteColor),
          onPressed: () {
            Get.delete<SignalController>();
            Get.offAll(() => HomeScreen());
          },
        ),
        actions: [
          TextButton(onPressed: _controller.nextSignal, child: Text("Pomiń")),
        ],
      ),
      body: Body(),
    );
  }
}
