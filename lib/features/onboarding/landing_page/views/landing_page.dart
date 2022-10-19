import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/text_strings.dart';

import '../../../../common_widgets/buttons/common_icons.dart';
import '../../../../common_widgets/buttons/on_boarding_buttons.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey<ScaffoldState> btmsheet = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: btmsheet,
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: CommonBackIcon(
                iconColor: AppColors.primary,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ',
                    style: GoogleFonts.inter(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary),
                  ),
                  Image.asset(
                    'logo'.png,
                    width: 148,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    signUpText,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300, color: AppColors.primary),
                  ),
                  CommonButton(
                    text: 'I am a new user',
                    color: AppColors.primary,
                    buttonPressed: () {},
                  ),
                  CommonButton(
                    text: 'Sign in',
                    color: AppColors.buttonColor2,
                    buttonPressed: () {
                      btmsheet.currentState!.showBottomSheet(
                        (context) {
                          return Container(
                            height: 300.0,
                          );
                        },
                      );
                    },
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
