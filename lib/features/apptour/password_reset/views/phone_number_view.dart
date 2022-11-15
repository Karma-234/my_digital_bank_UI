import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldColor2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SafeArea(
                    child: CommonBackIcon(iconColor: AppColors.secondary),
                  ),
                  Gap(82.25.h),
                  const AppTextHeader(
                    header: 'Password Reset',
                  ),
                  const AppTextBody(textBody: passReset),
                  Gap(97.0.h),
                  Gap(91.0.h),
                ],
              ),
            ),
            ResetPasswordButton(
              text: 'Recover Password',
              buttonPressed: () {
                Get.to(() => const OtpResView());
              },
            ),
            Gap(41.0.h),
          ],
        ),
      ),
    );
  }
}
