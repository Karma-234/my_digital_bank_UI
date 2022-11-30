import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/exports.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    this.onPressed,
    this.text = '',
    this.txtColor = AppColors.secondary,
    this.btnColor = AppColors.primary,
    this.height,
    this.width,
  }) : super(key: key);
  final Function()? onPressed;
  final String text;
  final Color? txtColor;
  final Color? btnColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.secondary,
        fixedSize: Size(width ?? 99.0.w, height ?? 49.0.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        backgroundColor: btnColor,
      ),
      onPressed: onPressed,
      child: AppTextBody(
        textBody: text,
        color: txtColor,
      ),
    );
  }
}
