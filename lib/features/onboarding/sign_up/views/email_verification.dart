import 'package:flutter/material.dart';
import 'package:kml_digital_bank/common_widgets/info_input_field.dart';
import 'package:kml_digital_bank/common_widgets/reset_password_button.dart';
import 'package:kml_digital_bank/common_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

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
              children: [
                const SizedBox(
                  height: 147.0,
                ),
                const SignUpTextHeader(header: 'Email Verification'),
                const SignUpTextbody(textBody: emailVerBody),
                const SizedBox(
                  height: 94.0,
                ),
                Form(
                  child: Column(
                    children: [
                      const InfoInputField(
                        hintText: 'Enter email',
                        counterText: 'Email address',
                        prefixIcon: Icon(
                          Icons.mail,
                          color: AppColors.secondary,
                        ),
                      ),
                      const SizedBox(
                        height: 190.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ResetPasswordButton(
                          text: 'Email OTP code',
                          buttonPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
