import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/exports.dart';
import '../../../../account_summary/views/scaffold_body/card/widgets/app_text_button.dart';
import '../../../../account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import '../../../controller/payment_controller.dart';
import 'bottom_sheets.dart';

class AirtimeAndData extends StatelessWidget {
  const AirtimeAndData({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PaymenController ctrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(23.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextButton(
                btnColor: AppColors.secondary,
                onPressed: () {},
                txtColor: AppColors.primary,
                text: 'Airtime',
                width: 157.0.w,
              ),
              AppTextButton(
                btnColor: AppColors.primary,
                onPressed: () {
                  dataBottomSheet(
                    context,
                    ctrl,
                  );
                },
                txtColor: AppColors.secondary,
                text: 'Data bundle',
                width: 157.0.w,
              ),
            ],
          ),
          Gap(48.0.h),
          const SearchOptionField(
            label: 'Phone number',
            hint: 'E.g 09016245266',
            fullwidth: true,
          ),
          Gap(85.0.h),
          AppButton(
            txtcolor: AppColors.primary,
            btncolor: AppColors.secondary,
            onPressed: () {
              airtimeBottomSheet(context, ctrl);
            },
            text: 'Continue',
          )
        ],
      ),
    );
  }
}
