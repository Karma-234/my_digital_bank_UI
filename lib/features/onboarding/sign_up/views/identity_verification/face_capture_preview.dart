import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';

class FacePreview extends StatelessWidget {
  const FacePreview({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: CommonBackIcon(iconColor: AppColors.primary),
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
                  ClipOval(),
                  Text(
                    'Take Another',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: AppColors.primary,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
