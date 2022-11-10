import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/common_widgets/input_fields/info_input_field.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../core/forms/email_verification_form.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(147.0.h),
                const AppTextHeader(
                  header: 'Email Verification',
                  color: AppColors.secondary,
                ),
                const AppTextBody(
                  textBody: emailVerBody,
                  color: AppColors.bvnColor,
                ),
                Gap(90.0.h),
                const EmailVerificationForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
