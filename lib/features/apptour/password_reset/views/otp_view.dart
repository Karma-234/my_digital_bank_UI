import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/controller/mobx_controllers/timer_controller.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/exports.dart';

import '../../../../core/exports.dart';

class OtpResView extends StatelessWidget {
  OtpResView({super.key});
  final ctrl = Get.put(UserInfoController());
  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showImg: false,
      headerTxt: 'Reset Code',
      bodyTxt:
          'Key in the 6 digit code we just sent to ${(ctrl.phonetxt.value)}',
      children: [
        OTPinInput(
          onComp: (p0) {
            Get.to(() => NewPasswordView());
          },
        ),
        Gap(10.0.h),
        AppTimer(
          duration: const Duration(minutes: 5),
          resend: () async {},
        )
      ],
    );
  }
}
