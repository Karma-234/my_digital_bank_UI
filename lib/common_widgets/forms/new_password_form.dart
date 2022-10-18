import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../password_form_field.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  color: AppColors.secondary,
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
                  color: AppColors.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 67.0,
          ),
        ],
      ),
    );
  }
}
