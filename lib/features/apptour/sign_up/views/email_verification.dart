import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/core/common_widgets/app_timer/app_timer_widget.dart';
import 'package:kml_digital_bank/core/common_widgets/input_fields/otp_input_field.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/email_verification_done_view.dart';

class EmailOtpView extends StatelessWidget {
  EmailOtpView({super.key});

  final email = Get.put(UserInfoController());

  final GlobalKey<FormState> otpKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      key: otpKey,
      showImg: false,
      headerTxt: 'OTP Code',
      bodyTxt:
          'You\'re almost done! Key in the 6 digit code we just sent to ${email.emailtxt}',
      children: [
        OTPinInput(
          onComp: (p0) {
            Get.offAll(() => const EmailVerificationDoneView());
          },
        ),
        Gap(10.0.h),
        AppTimerWidget(
          duration: const Duration(minutes: 5),
          onResend: () async {},
        ),
      ],
    );
  }
}
