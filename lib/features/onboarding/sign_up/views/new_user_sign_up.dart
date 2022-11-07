import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/on_boarding_buttons.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../core/forms/sign_up_form.dart';
import '../../../../core/common_widgets/info_field_text.dart';
import '../../../../core/common_widgets/input_fields/info_input_field.dart';
import '../../../../core/common_widgets/input_fields/phone_number_field.dart';
import '../../../../core/common_widgets/text_header_and_body.dart';

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({super.key});

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
                child: CommonBackIcon(
                  iconColor: AppColors.secondary,
                ),
              ),
              Image(
                image: AssetImage(
                  'cutbg'.png,
                ),
                height: 84.3,
                width: 320.0,
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: const EdgeInsets.only(left: 36.0, right: 31.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SignUpTextHeader(
                      header: 'Your Basic Info',
                      color: AppColors.secondary,
                    ),
                    const SignUpTextbody(
                      textBody: basicInfo,
                      color: AppColors.bvnColor,
                    ),
                    const SizedBox(
                      height: 20.12,
                    ),
                    const SignUpForm()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
