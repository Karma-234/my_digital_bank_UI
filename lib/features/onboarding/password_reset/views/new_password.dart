import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/reset_password_button.dart';
import 'package:kml_digital_bank/core/app_colors.dart';

import '../../../../common_widgets/password_form_field.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          const SizedBox(
            height: 153.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              'New Password',
              style: GoogleFonts.inder(
                fontSize: 24.0,
                color: AppColors.onButton,
              ),
            ),
          ),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 42.0,
                ),
                const SizedBox(
                  width: 308.67,
                  child: NewPasswordFormField(
                    hintPass: 'New Password',
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 260.0,
                    ),
                    Text(
                      'New Password',
                      style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: AppColors.onButton,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                const SizedBox(
                  width: 308.67,
                  child: NewPasswordFormField(hintPass: 'Confirm Password'),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 240.0,
                    ),
                    Text(
                      'Confirm Password',
                      style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: AppColors.onButton,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 67.0,
                ),
                Center(
                  child: ResetPasswordButton(
                    text: 'Recover Password',
                    buttonPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
