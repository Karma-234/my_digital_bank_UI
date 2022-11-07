import 'package:flutter/material.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../../core/forms/id_verification_form.dart';

class IdentityVerificationScreen extends StatelessWidget {
  const IdentityVerificationScreen({super.key});

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
                child: CommonBackIcon(iconColor: AppColors.secondary),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppTextHeader(
                      header: 'Identity Verification',
                      color: AppColors.secondary,
                    ),
                    const AppTextBody(
                      textBody: idText,
                      color: AppColors.bvnColor,
                    ),
                    const SizedBox(
                      height: 70.0,
                    ),
                    IdentityVerificationForm(),
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
