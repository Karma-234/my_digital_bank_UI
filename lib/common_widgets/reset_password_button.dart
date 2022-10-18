import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_colors.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    Key? key,
    required this.text,
    required this.buttonPressed,
  }) : super(key: key);
  final String text;
  final Function() buttonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(311.0, 48.0),
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
            fontWeight: FontWeight.w300,
            color: AppColors.primary,
            fontSize: 16.0),
      ),
    );
  }
}
