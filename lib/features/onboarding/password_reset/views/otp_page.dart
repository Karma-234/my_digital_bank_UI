import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/exports.dart';

import '../../../../core/exports.dart';

class OtpResView extends StatelessWidget {
  const OtpResView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: CommonBackIcon(iconColor: AppColors.secondary),
            ),
            Gap(82.25.h),
            const AppTextHeader(
                header: 'Reset Code', color: AppColors.secondary),
            const AppTextBody(textBody: otpText),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(70.0.h),
                const OtpForm(),
                Gap(11.0.h),
                const AppTextBody(textBody: 'OTP will expire after 00:01:43'),
                Gap(15.0.h),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(() => const NewPasswordView());
                },
                child: const AppTextBody(
                  textBody: 'Resend OTP',
                  color: AppColors.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
