import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/exports.dart';

class LoanTermDropdown extends StatelessWidget {
  const LoanTermDropdown(
      {Key? key,
      required this.defvalue,
      required this.duration,
      this.onChanged})
      : super(key: key);

  final String defvalue;
  final List<String> duration;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: defvalue,
      style: TextStyle(
          color: AppColors.secondary,
          fontSize: 18.0.sp,
          height: 18.0.sp / 24.0
            ..sp),
      elevation: 15,
      iconEnabledColor: AppColors.secondary,
      focusColor: AppColors.scaffoldColor2,
      iconDisabledColor: AppColors.grey,
      decoration: InputDecoration(
        filled: true,
        counter: const AppTextBody(
          textBody: 'How many months ?',
        ),
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.r),
          gapPadding: 10.0.sp,
          borderSide: const BorderSide(
              color: Colors.transparent, style: BorderStyle.none),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.r),
          gapPadding: 10.0.sp,
          borderSide: const BorderSide(
              color: Colors.transparent, style: BorderStyle.none),
        ),
        fillColor: AppColors.scaffoldColor2,
        focusColor: AppColors.scaffoldColor2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.r),
          gapPadding: 10.0.sp,
          borderSide: const BorderSide(
              color: Colors.transparent, style: BorderStyle.none),
        ),
      ),
      isDense: true,
      focusNode: FocusNode(),
      items: duration
          .map((e) => DropdownMenuItem(
              value: e,
              child: AppTextHeader(
                header: e,
              )))
          .toList(),
      onChanged: onChanged,
    );
  }
}
