import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/exports.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {Key? key, this.onPressed, required this.label, required this.icon})
      : super(key: key);
  final Function()? onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(109.0.w, 70.0.h),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(13.0.r),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Gap(15.0.h),
          Icon(
            icon,
            color: AppColors.secondary,
          ),
          AppTextBody(
            textBody: label,
            fontSize: 14.0,
          ),
        ],
      ),
    );
  }
}
