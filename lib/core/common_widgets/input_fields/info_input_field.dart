import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_colors/app_colors.dart';

class InfoInputField extends StatelessWidget {
  const InfoInputField(
      {Key? key,
      required this.hintText,
      required this.counterText,
      this.prefixIcon,
      this.controller,
      this.validator,
      this.keyboardType,
      this.onSaved,
      this.inputFormat,
      this.icon})
      : super(key: key);
  final String hintText;
  final String counterText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormat;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormat,
      onSaved: onSaved,
      onFieldSubmitted: onSaved,
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        icon: icon,
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
