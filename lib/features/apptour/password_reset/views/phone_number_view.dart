import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

import 'package:kml_digital_bank/features/exports.dart';

import '../../../../core/exports.dart';

class PhoneNumberView extends StatelessWidget {
  PhoneNumberView({super.key});
  final inputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
        color: AppColors.secondary, style: BorderStyle.solid, width: 2.0.sp),
  );

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showImg: false,
      headerTxt: 'Password reset',
      bodyTxt: 'Enter your phone number to recover your password',
      btns: [
        AppButton(
          btncolor: AppColors.secondary,
          text: 'Recover password',
          txtcolor: AppColors.primary,
          onPressed: () {
            Get.to(() => OtpResView());
          },
        )
      ],
      children: [
        Gap(23.0.h),
        PhoneNumberField(),
      ],
    );
  }
}
