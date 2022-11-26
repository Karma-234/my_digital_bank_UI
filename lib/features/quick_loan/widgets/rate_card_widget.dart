import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/exports.dart';

class RateCard extends StatelessWidget {
  const RateCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0.r),
      height: 121.0.h,
      width: 159.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.scaffoldColor2.withOpacity(0.2),
          ),
          BoxShadow(
            color: AppColors.scaffoldColor2.withOpacity(0.2),
            offset: const Offset(4.0, 125.0),
          ),
          BoxShadow(
            color: AppColors.scaffoldColor2.withOpacity(0.2),
            offset: const Offset(4, 73.0),
          ),
          BoxShadow(
            color: AppColors.scaffoldColor2.withOpacity(0.2),
            offset: const Offset(15.0, 0.2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppTextBody(
            textBody: 'Total monthlyy payable amount',
            alignment: TextAlign.center,
          ),
          Gap(15.0.h),
          const AppTextBody(
            textBody: '#0.00 - 0%',
            color: AppColors.secondary,
          )
        ],
      ),
    );
  }
}
