import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/exports.dart';

class OptionsTile1 extends StatelessWidget {
  const OptionsTile1({
    Key? key,
    this.ontap,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final Function()? ontap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        color: AppColors.scaffoldColor2,
      ),
      child: ListTile(
        onTap: ontap,
        leading: Container(
          height: 38.0.h,
          width: 38.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            color: AppColors.primary,
          ),
          child: Icon(
            icon,
            color: AppColors.secondary,
          ),
        ),
        title: AppTextBody(
          textBody: title,
          color: Colors.black,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.black,
        ),
      ),
    );
  }
}
