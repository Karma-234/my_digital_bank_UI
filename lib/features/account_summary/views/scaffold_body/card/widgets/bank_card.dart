import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/exports.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183.0.h,
      width: 328.0.w,
      padding: EdgeInsets.all(14.0.r),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'bg3'.png,
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20.0.r),
        gradient: const LinearGradient(
          colors: [Color(0xFF075D73), Color(0xFF0A3945)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextBody(
                textBody: 'Current balance',
                fontSize: 14.0,
                height: 18.0,
                color: AppColors.primary,
              ),
              const AppTextBody(
                textBody: '₦12,937',
                color: AppColors.primary,
              ),
              Gap(15.0.h),
              const AppTextBody(
                textBody: 'Busari Kamal',
                color: AppColors.grey,
              ),
              const AppTextBody(
                textBody: '5345 5678 5678 5678',
                color: AppColors.grey,
                height: 18.0,
                fontSize: 14.0,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.more_horiz_outlined,
                color: AppColors.primary,
              ),
              Text.rich(
                TextSpan(
                  text: 'Exp. date\n',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 10.0.sp,
                    height: 10.0.sp / 16.0.sp,
                  ),
                  children: [
                    TextSpan(
                      text: '\n2020',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14.0.sp,
                        height: 14.0.sp / 18.0.sp,
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'mastercard'.png,
                height: 19.36.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
