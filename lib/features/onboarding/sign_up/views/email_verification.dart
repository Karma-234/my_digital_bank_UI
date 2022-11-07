import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kml_digital_bank/core/common_widgets/input_fields/info_input_field.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../core/forms/email_verification_form.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

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
              children: const [
                SizedBox(
                  height: 147.0,
                ),
                AppTextHeader(
                  header: 'Email Verification',
                  color: AppColors.secondary,
                ),
                AppTextBody(
                  textBody: emailVerBody,
                  color: AppColors.bvnColor,
                ),
                SizedBox(
                  height: 94.0,
                ),
                EmailVerificationForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
