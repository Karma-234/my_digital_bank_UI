import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/app_timer_controller.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/core/common_widgets/app_timer/app_timer_widget.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/reusable_widgets/skip_button.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/exports.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/exports.dart';

class OtpSignUpView extends StatefulWidget {
  const OtpSignUpView({super.key});

  @override
  State<OtpSignUpView> createState() => _OtpSignUpViewState();
}

class _OtpSignUpViewState extends State<OtpSignUpView> {
  final ctrl = Get.put(UserInfoController());

  final GlobalKey<FormState> otpKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      key: otpKey,
      headerTxt: 'OTP Code',
      bodyTxt:
          'You\'re almost done! Key in the 6 digit code we just sent to ${ctrl.phonetxt}.',
      showImg: false,
      children: [
        OTPinInput(
          onComp: (p0) {
            Get.to(() => PhotoCaptureView());
          },
        ),
        Gap(11.0.h),
        AppTimerWidget(
          duration: const Duration(minutes: 2),
          onResend: () async {},
        ),
      ],
    );
  }
}
