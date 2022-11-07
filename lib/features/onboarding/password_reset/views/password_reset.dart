import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';

import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../core/common_widgets/buttons/reset_password_button.dart';

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
                child: Padding(
                  padding: EdgeInsets.only(left: 27.0),
                  child: CommonBackIcon(iconColor: AppColors.secondary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31.0, right: 44.0),
                child: Text(
                  'Password Reset',
                  style: GoogleFonts.inter(
                    fontSize: 24.0,
                    color: AppColors.secondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 19.0),
                child: Text(
                  passReset,
                  style: GoogleFonts.inter(
                    color: AppColors.textColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 58.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 32.33),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  decoration: const InputDecoration(
                    iconColor: AppColors.secondary,
                    suffixIcon: Icon(Icons.check),
                    suffixIconColor: AppColors.secondary,
                    prefixIcon: Icon(Icons.flag),
                    prefixText: '+234',
                    enabled: true,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondary),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Phone Number',
                    style: GoogleFonts.inter(
                      color: AppColors.secondary,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 91.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0, left: 29.0),
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
