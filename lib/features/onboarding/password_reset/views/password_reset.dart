import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/common_icons.dart';

import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

import '../../../../common_widgets/reset_password_button.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(
                child: CommonBackIcon(iconColor: AppColors.onButton),
              ),
              Text(
                'Password Reset',
                style: GoogleFonts.inter(
                  fontSize: 24.0,
                  color: AppColors.onButton,
                ),
              ),
              Text(
                passReset,
                style: GoogleFonts.inter(
                  color: AppColors.textColor,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: const InputDecoration(
                  iconColor: AppColors.onButton,
                  suffixIcon: Icon(Icons.check),
                  suffixIconColor: AppColors.onButton,
                  prefixIcon: Icon(Icons.flag),
                  prefixText: '+234',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Phone Number',
                    style: GoogleFonts.inter(
                      color: AppColors.onButton,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: ResetPasswordButton(
                  text: 'Recover Password',
                  buttonPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
