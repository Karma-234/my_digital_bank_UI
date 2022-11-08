import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_colors/app_colors.dart';

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
    return Center(
      child: ElevatedButton(
        onPressed: buttonPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(311.0.w, 48.0.h),
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
              fontSize: 16.0.sp),
        ),
      ),
    );
  }
}
