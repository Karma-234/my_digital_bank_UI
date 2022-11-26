import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/exports.dart';

class LoanApplicationTerms extends StatelessWidget {
  const LoanApplicationTerms({
    Key? key,
    this.term1 = '',
    this.term2 = '',
    this.term3 = '',
    this.term4 = '',
  }) : super(key: key);

  final String term1;
  final String term2;
  final String term3;
  final String term4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const AppTextBody(
            textBody: 'Total Loan',
          ),
          Gap(10.0.h),
          const AppTextHeader(
            header: '# 0.00',
            fontSize: 36.0,
            height: 32.0,
          ),
          Gap(27.0.h),
          const Divider(),
          Gap(10.0.h),
          AppTextBody(
            textBody: term1,
            color: AppColors.secondary,
          ),
          Gap(10.0.h),
          const Divider(),
          Gap(10.0.h),
          AppTextBody(
            textBody: term2,
            color: AppColors.secondary,
          ),
          Gap(10.0.h),
          const Divider(),
          Gap(10.0.h),
          AppTextBody(
            textBody: term3,
            color: AppColors.secondary,
          ),
          Gap(10.0.h),
          const Divider(),
          Gap(10.0.h),
          AppTextBody(
            textBody: term4,
            color: AppColors.secondary,
          ),
          Gap(10.0.h),
          const Divider(),
          Gap(118.0.h),
        ],
      ),
    );
  }
}
