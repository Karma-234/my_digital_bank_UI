import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/exports.dart';

class SkipButton extends StatelessWidget {
  const SkipButton(
      {Key? key,
      this.onPressed,
      this.txtColor = AppColors.primary,
      this.txt = 'Skip',
      this.withOpacity = true})
      : super(key: key);
  final Function()? onPressed;
  final Color txtColor;
  final bool withOpacity;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          onPressed: onPressed,
          child: AppTextBody(
            fontSize: 16.0.sp,
            textBody: txt,
            color: txtColor.withOpacity(withOpacity ? 0.3 : 1),
          ),
        ),
      ],
    );
  }
}
