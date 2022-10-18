import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/reset_password_button.dart';
import 'package:kml_digital_bank/core/app_colors.dart';

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
          Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Password',
                    style: GoogleFonts.inder(
                      fontSize: 24.0,
                      color: AppColors.onButton,
                    ),
                  ),
                  const SizedBox(
                    height: 42.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        isDense: true,
                        hintText: 'New Password',
                        suffixText: 'Show'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                  TextFormField(
                    decoration: const InputDecoration(
                        isDense: true,
                        hintText: 'Confirm Password',
                        suffixText: 'Show'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
          ),
        ],
      ),
    );
  }
}
