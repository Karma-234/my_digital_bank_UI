import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';

class AppTextBody extends StatelessWidget {
  const AppTextBody({
    Key? key,
    required this.textBody,
    this.color = AppColors.textColor,
    this.fontSize = 18.0,
    this.height = 24.0,
  }) : super(key: key);
  final String textBody;
  final Color? color;
  final double fontSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        color: color,
        height: height / fontSize,
      ),
    );
  }
}

class AppTextHeader extends StatelessWidget {
  const AppTextHeader(
      {Key? key,
      required this.header,
      this.color = AppColors.secondary,
      this.fontSize = 24.0,
      this.height = 32.0})
      : super(key: key);
  final String header;
  final Color? color;
  final double fontSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: GoogleFonts.inter(
        fontSize: fontSize.sp,
        color: color,
        height: height.sp / fontSize.sp,
      ),
    );
  }
}
