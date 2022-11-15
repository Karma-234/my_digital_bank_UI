import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/exports.dart';

class PasswordSuccessView extends StatelessWidget {
  const PasswordSuccessView({super.key});

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
                AppButton(
                  text: 'Reset Password',
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
