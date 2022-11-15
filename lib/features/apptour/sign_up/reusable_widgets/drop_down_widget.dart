import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/exports.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {Key? key,
      required this.items,
      this.itemPicked,
      this.hint = '',
      this.boxShadow,
      this.onChanged,
      this.bgColor = AppColors.buttonColor2,
      this.elevColor,
      this.elevation = 0})
      : super(key: key);

  final List<String> items;
  final Object? itemPicked;
  final String hint;
  final List<BoxShadow>? boxShadow;
  final Function(Object?)? onChanged;
  final Color bgColor;
  final double? elevation;
  final Color? elevColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0.r))),
      elevation: elevation,
      shadowColor: elevColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w),
        width: 309.43.w,
        height: 43.0.h,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(12.0.r)),
          boxShadow: boxShadow,
        ),
        child: Center(
          child: DropdownButton(
            value: itemPicked,
            iconEnabledColor: AppColors.secondary,
            alignment: Alignment.centerLeft,
            isExpanded: true,
            hint: AppTextBody(
              textBody: hint,
              color: AppColors.secondary,
            ),
            items: items
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
