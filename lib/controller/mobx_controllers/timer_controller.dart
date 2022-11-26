import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/reusable_widgets/skip_button.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:flutter_mobx/flutter_mobx.dart';

typedef Resend = Future Function();

class AppTimer extends StatelessWidget {
  late mobx.Observable<Duration> countdown;
  late mobx.Action reducer;
  late mobx.Action resetCountdown;
  Resend resend;

  AppTimer({Key? key, required Duration duration, required this.resend})
      : super(key: key) {
    countdown = mobx.Observable(duration);
    reducer = mobx.Action(() {
      countdown.value -= const Duration(seconds: 1);
    });
    resetCountdown = mobx.Action(() {
      countdown.value = duration;
    });
  }

  startTimer() {
    Timer(const Duration(seconds: 1), () {
      reducer();
      if (countdown.value.inSeconds > 0) {
        startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return Observer(builder: (context) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextBody(
                textBody:
                    'OTP code will expire in 00:0${countdown.value.inMinutes}:${(countdown.value.inSeconds % Duration.secondsPerMinute)}'),
            Gap(25.0.h),
            Observer(builder: (context) {
              if (countdown.value.inSeconds == 0) {
                return SkipButton2(
                  txtColor: AppColors.secondary,
                  txt: 'Resend OTP',
                  onTap: () async {
                    resend().then((_) {
                      resetCountdown();
                      startTimer();
                    });
                  },
                );
              }
              return Gap(10.0.h);
            }),
          ],
        ),
      );
    });
  }
}
