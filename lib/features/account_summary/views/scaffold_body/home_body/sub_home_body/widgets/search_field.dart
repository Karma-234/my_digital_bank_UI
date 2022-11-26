import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../core/exports.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    this.hint = '',
  }) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusColor: AppColors.scaffoldColor2,
        hoverColor: AppColors.scaffoldColor2,
        hintText: hint,
        hintStyle: GoogleFonts.inter(
          fontSize: 18.0.sp,
          height: 18.0.sp / 24.0.sp,
          color: AppColors.prefixTextColor,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        filled: true,
        fillColor: AppColors.scaffoldColor2,
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.secondary,
        ),
        constraints: BoxConstraints.loose(Size(340.w, 40.h)),
        suffixIcon: const Icon(
          Icons.close_rounded,
          color: AppColors.secondary,
        ),
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          borderSide: BorderSide(
            style: BorderStyle.none,
            width: 0,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          borderSide: BorderSide(
            style: BorderStyle.none,
            width: 0,
          ),
        ),
      ),
    );
  }
}
