import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/common_widgets/buttons/on_boarding_buttons.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';

class PasswordSuccess extends StatelessWidget {
  const PasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 147.0,
                ),
                SizedBox(
                  height: 151.0,
                  width: 151.0,
                  child: Image(
                    image: AssetImage('Success'.png),
                  ),
                ),
                const SizedBox(
                  height: 27.0,
                ),
                Text(
                  'Password Changed',
                  style: GoogleFonts.inter(
                      color: AppColors.primary, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 200.0,
                ),
                CommonButton(
                  text: 'Proceed',
                  color: AppColors.buttonColor2,
                  buttonPressed: () {},
                ),
                const SizedBox(
                  height: 85.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
