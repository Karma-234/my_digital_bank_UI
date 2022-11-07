import 'package:flutter/material.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';

import '../../../../core/forms/bvn_validation_form.dart';

class BvnValidation extends StatelessWidget {
  const BvnValidation({super.key});

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
              Container(
                padding: const EdgeInsets.only(
                  left: 34.0,
                  right: 21.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('bgtrans'.png),
                      ),
                    ),
                    const SignUpTextHeader(
                      header: 'BVN Validation',
                      color: AppColors.secondary,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const SignUpTextbody(
                      textBody: bvnBody,
                      color: AppColors.bvnColor,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    BvnValidationForm()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
