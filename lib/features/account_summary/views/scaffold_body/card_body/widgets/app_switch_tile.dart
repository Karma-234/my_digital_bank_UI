import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/exports.dart';

class AppSwitchTile extends StatelessWidget {
  const AppSwitchTile({
    Key? key,
    required this.value,
    required this.title,
    this.onchanged,
  }) : super(key: key);

  final bool value;
  final String title;
  final Function(bool)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor2,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: SwitchListTile(
        value: value,
        onChanged: onchanged,
        activeColor: AppColors.primary,
        activeTrackColor: AppColors.secondary,
        inactiveTrackColor: AppColors.grey,
        tileColor: AppColors.scaffoldColor2,
        selected: true,
        selectedTileColor: AppColors.scaffoldColor2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.r)),
        title: AppTextBody(
          textBody: title,
          color: Colors.black,
        ),
      ),
    );
  }
}
