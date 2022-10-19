import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/core/app_colors.dart';

import '../../../../common_widgets/forms/new_password_form.dart';
import '../../../../common_widgets/input_fields/password_form_field.dart';

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
                color: AppColors.secondary,
              ),
            ),
          ),
          const NewPasswordForm(),
          Center(
            child: ResetPasswordButton(
              text: 'Recover Password',
              buttonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
