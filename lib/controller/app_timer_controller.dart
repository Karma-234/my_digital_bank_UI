import 'dart:async';

import 'package:get/get.dart';

class TimerController extends GetxController {
  static TimerController get find => Get.find();

  late Rx<Duration> countdown;

  reducer() async {
    return countdown.value -= const Duration(seconds: 1);
  }

  Future resetCountdown(Duration duration) async {
    countdown.value = duration;
  }

  startTimer() {
    Timer(
      const Duration(seconds: 1),
      () {
        reducer();
        if (countdown.value.inSeconds > 0) {
          startTimer();
        }
      },
    );
  }
}
