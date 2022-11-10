import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/exports.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key, this.onPressed}) : super(key: key);
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          onPressed: onPressed,
          child: AppTextBody(
            fontSize: 16.0.sp,
            textBody: 'Skip',
            color: AppColors.primary.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
