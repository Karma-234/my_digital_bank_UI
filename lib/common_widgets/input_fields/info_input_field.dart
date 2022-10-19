import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class InfoInputField extends StatelessWidget {
  const InfoInputField(
      {Key? key,
      required this.hintText,
      required this.counterText,
      required this.prefixIcon})
      : super(key: key);
  final String hintText;
  final String counterText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.secondary,
        counterText: counterText,
        counterStyle: GoogleFonts.inter(
          color: AppColors.secondary,
          fontSize: 16.0,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 18.0,
          color: AppColors.prefixTextColor,
        ),
        enabled: true,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
        ),
      ),
    );
  }
}
