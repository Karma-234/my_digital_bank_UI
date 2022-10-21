import 'package:flutter/material.dart';
import 'package:kml_digital_bank/common_widgets/input_fields/info_input_field.dart';
import 'package:kml_digital_bank/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/common_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

import '../../../../common_widgets/forms/email_verification_form.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 147.0,
                ),
                SignUpTextHeader(
                  header: 'Email Verification',
                  color: AppColors.secondary,
                ),
                SignUpTextbody(
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
