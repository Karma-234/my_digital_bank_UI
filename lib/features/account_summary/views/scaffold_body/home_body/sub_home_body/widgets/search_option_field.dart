import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/exports.dart';

class SearchOptionField extends StatelessWidget {
  const SearchOptionField({
    Key? key,
    required this.label,
    required this.hint,
    this.labelColor = AppColors.black,
    this.fullwidth = false,
  }) : super(key: key);
  final String label;
  final String hint;
  final Color labelColor;
  final bool fullwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextBody(
          textBody: label,
          color: labelColor,
        ),
        SizedBox(
          child: SizedBox(
            width: fullwidth ? double.infinity : 152.0.w,
            child: TextFormField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey),
                ),
                hintText: hint,
                hintStyle: TextStyle(
                    color: AppColors.prefixTextColor,
                    fontSize: 18.0.sp,
                    height: 18.0.sp / 24.0.sp),
              ),
            ),
          ),
        )
      ],
    );
  }
}
