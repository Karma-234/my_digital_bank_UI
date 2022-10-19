import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/common_icons.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

import '../../../../common_widgets/forms/otp_form.dart';
import '../../../../common_widgets/otp_input_field.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonBackIcon(iconColor: AppColors.secondary),
            ],
          ),
          const SizedBox(
            height: 82.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Reset code',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      fontSize: 24.0,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 61.0,
                  width: 324.0,
                  child: Text(
                    otpText,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      color: AppColors.textColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 300.0,
                      child: OtpForm(),
                    ),
                    SizedBox(
                      width: 308.0,
                      height: 61.0,
                      child: Text(
                        'OTP will expire after 00:01:43',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.mandali(
                          color: AppColors.textColor,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Resend OTP',
                style: GoogleFonts.inter(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
