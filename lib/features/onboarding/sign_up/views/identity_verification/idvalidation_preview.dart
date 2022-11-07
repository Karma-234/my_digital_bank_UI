import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/on_boarding_buttons.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';

class IdPreviewScreen extends StatelessWidget {
  const IdPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bg3'.png),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(
                  child: CommonBackIcon(iconColor: AppColors.primary)),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                children: const [
                  AppTextHeader(
                    header: 'Identity Verification',
                    color: AppColors.primary,
                  ),
                  AppTextBody(
                    textBody: 'Front of Identification Card',
                    color: AppColors.primary,
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                height: 170.0,
                width: 293.0,
                child: Image(
                  image: Image.file(Get.arguments).image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Text(
                  'You are Done',
                  style: GoogleFonts.acme(
                      color: AppColors.fadeColor, fontSize: 18.0),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              CommonButton(
                  text: 'Done',
                  color: AppColors.buttonColor2,
                  buttonPressed: () {}),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip for now',
                    style: GoogleFonts.acme(
                      color: AppColors.fadeColor,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
