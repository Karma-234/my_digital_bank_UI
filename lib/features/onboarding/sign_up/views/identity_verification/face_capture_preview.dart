import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/common_widgets/buttons/on_boarding_buttons.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

import '../../controller/camera_controller.dart';

class FacePreview extends StatefulWidget {
  const FacePreview({super.key, required this.image});
  final image;

  @override
  State<FacePreview> createState() => _FacePreviewState();
}

class _FacePreviewState extends State<FacePreview> {
  final profileImageController = Get.put(ProfileImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'bg3'.png,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(
                child: CommonBackIcon(iconColor: AppColors.primary),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Preview',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: AppColors.primary,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipOval(
                      child: Image.file(
                        widget.image,
                        height: 212,
                        width: 212,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Take Another',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: AppColors.primary,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                  ],
                ),
              ),
              Text(
                facePrTxt,
                style: GoogleFonts.acme(
                  color: AppColors.fadeColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                child: CommonButton(
                  text: 'Proceed to ID card',
                  color: AppColors.buttonColor2,
                  buttonPressed: () {},
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
