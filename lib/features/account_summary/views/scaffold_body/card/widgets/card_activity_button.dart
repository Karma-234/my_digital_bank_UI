import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/exports.dart';

class CardActivityButton extends StatelessWidget {
  const CardActivityButton({
    Key? key,
    this.icon,
    required this.label,
    this.onPressed,
    this.height = 74.0,
    this.labelColor,
    this.width = 74.0,
    this.shadowColor,
    this.widget,
  }) : super(key: key);
  final IconData? icon;
  final String label;
  final Function()? onPressed;
  final double width;
  final double height;
  final Color? labelColor;
  final Color? shadowColor;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(width.w, height.h),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              shadowColor: shadowColor ?? AppColors.black.withOpacity(0.7),
              elevation: 10.0),
          onPressed: onPressed,
          child: widget ??
              Icon(
                icon,
                color: AppColors.secondary,
              ),
        ),
        Gap(10.0.h),
        AppTextHeader(
          header: label,
          fontSize: 12.0,
          height: 16.0,
          color: labelColor ?? AppColors.secondary,
        ),
      ],
    );
  }
}
