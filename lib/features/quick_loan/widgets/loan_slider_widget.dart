import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/exports.dart';

class AppLoanSlider extends StatelessWidget {
  const AppLoanSlider({Key? key, required this.currentValue, this.onChanged})
      : super(key: key);

  final double currentValue;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.0.h,
      width: 330.0.w,
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor2,
        borderRadius: BorderRadius.circular(15.0.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppTextBody(textBody: 'Loan amount'),
          AppTextHeader(
            header: '₦ ${currentValue.toStringAsFixed(2)}',
            fontSize: 36.0,
            height: 40.0,
          ),
          Slider(
            thumbColor: AppColors.secondary,
            inactiveColor: AppColors.grey,
            activeColor: AppColors.secondary,
            value: currentValue,
            min: 0.0,
            max: 1000000.0,
            focusNode: FocusNode(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
