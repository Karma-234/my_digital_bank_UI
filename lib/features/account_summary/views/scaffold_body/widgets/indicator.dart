import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/exports.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.dotIndex,
    required this.dotCount,
  }) : super(key: key);

  final double dotIndex;
  final int dotCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        dotsCount: dotCount,
        position: dotIndex,
        decorator: DotsDecorator(
          color: AppColors.prefixTextColor.withOpacity(0.2),
          activeColor: AppColors.prefixTextColor,
          activeSize: Size(16.0.w, 5.0.h),
          size: Size(8.0.w, 5.0.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.5.r)),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.5.r)),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 99.0.h,
            width: 239.0.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: AppColors.primary,
            ),
          ),
          Gap(21.0.w),
        ],
      ),
    );
  }
}
