import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/exports.dart';

import '../../../../core/exports.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldColor2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewPasswordForm(),
            Center(
              child: ResetPasswordButton(
                text: 'Recover Password',
                buttonPressed: () {
                  Get.to(() => const PasswordSuccessView());
                },
              ),
            ),
            Gap(34.0.h),
          ],
        ),
      ),
    );
  }
}
