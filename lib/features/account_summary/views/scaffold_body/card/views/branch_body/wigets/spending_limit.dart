import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card/widgets/app_text_button.dart';

import '../../../../../../../../core/exports.dart';
import '../../../../../../../quick_loan/widgets/loan_slider_widget.dart';

class SpendingLimit extends StatelessWidget {
  const SpendingLimit({
    Key? key,
    required this.currentValue,
    required this.duration,
    this.onChanged,
    this.onPressed1,
    this.onPressed2,
    this.onPressed3,
  }) : super(key: key);

  final double currentValue;
  final int duration;
  final dynamic Function(double)? onChanged;
  final dynamic Function()? onPressed1;
  final dynamic Function()? onPressed2;

  final dynamic Function()? onPressed3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLoanSlider(
          currentValue: currentValue,
          onChanged: onChanged,
        ),
        Gap(43.0.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTextButton(
              onPressed: onPressed1,
              text: 'Daily',
              btnColor: duration == 0 ? AppColors.secondary : AppColors.primary,
              txtColor: duration == 0 ? AppColors.primary : AppColors.secondary,
            ),
            AppTextButton(
              onPressed: onPressed2,
              text: 'Weekly',
              btnColor: duration == 1 ? AppColors.secondary : AppColors.primary,
              txtColor: duration == 1 ? AppColors.primary : AppColors.secondary,
            ),
            AppTextButton(
              onPressed: onPressed3,
              text: 'Monthly',
              btnColor: duration == 2 ? AppColors.secondary : AppColors.primary,
              txtColor: duration == 2 ? AppColors.primary : AppColors.secondary,
            ),
          ],
        ),
        Gap(46.0.h),
        AppButton(
          text: 'Set Limit',
          onPressed: () {},
        )
      ],
    );
  }
}
