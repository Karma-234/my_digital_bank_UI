import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/app_timer_controller.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';

typedef OnResend = Future Function();

class AppTimerWidget extends StatelessWidget {
  AppTimerWidget({required Duration duration, required this.onResend})
      : super(key: null) {
    timeCtrl.countdown.value = duration;
    timeCtrl.reducer();
    timeCtrl.resetCountdown(duration);
  }
  final timeCtrl = Get.put(TimerController());
  Duration duration = const Duration();
  OnResend onResend;

  @override
  Widget build(BuildContext context) {
    timeCtrl.startTimer();
    return Column(
      children: [
        Obx(
          () => Center(
            child: AppTextBody(
                textBody:
                    'OTP will expire after 00:0${timeCtrl.countdown.value.inMinutes}:${timeCtrl.countdown.value.inSeconds % Duration.secondsPerMinute}'),
          ),
        ),
        Gap(60.0.h),
        InkWell(
          onTap: () {
            onResend().then(
              (_) {
                timeCtrl.resetCountdown(const Duration(minutes: 2));
                timeCtrl.startTimer();
              },
            );
          },
          child: const AppTextHeader(header: 'Resend OTP'),
        )
      ],
    );
  }
}
