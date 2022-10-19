import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.text,
    required this.color,
    required this.buttonPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final Function() buttonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(287, 48),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
            fontWeight: FontWeight.w300,
            color: AppColors.secondary,
            fontSize: 16.0),
      ),
    );
  }
}
