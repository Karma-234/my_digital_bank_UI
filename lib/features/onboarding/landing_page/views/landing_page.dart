import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/text_strings.dart';
import 'package:kml_digital_bank/features/onboarding/sign_up/views/new_user_sign_up.dart';

import '../../../../common_widgets/buttons/common_icons.dart';
import '../../../../common_widgets/buttons/on_boarding_buttons.dart';

class ExistingUser extends StatelessWidget {
  ExistingUser({super.key});
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
            Container(
              padding: const EdgeInsets.only(right: 36.0, left: 36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ',
                    style: GoogleFonts.inter(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Image.asset(
                    'logo'.png,
                    width: 148,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    signUpText,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        color: AppColors.primary,
                        wordSpacing: 3.0,
                        fontSize: 15.0),
                  ),
                  const SizedBox(
                    height: 270.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      text: 'I am a new user',
                      color: AppColors.primary,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SignUpDetails();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
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
