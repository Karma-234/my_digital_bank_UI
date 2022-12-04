import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/exports.dart';

class SavingsTargetCard extends StatelessWidget {
  const SavingsTargetCard(
      {Key? key,
      required this.color,
      required this.title,
      required this.valueColor})
      : super(key: key);
  final Color color;
  final String title;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0.h),
      padding: EdgeInsets.all(12.0.r),
      height: 164.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(68.0.h),
              AppTextBody(
                textBody: title,
                color: AppColors.secondary,
              ),
              Gap(14.0.h),
              const AppTextBody(
                textBody: 'Amount saved',
                color: AppColors.black,
                fontSize: 10.0,
                height: 16.0,
              ),
              const AppTextBody(
                textBody: '#300,000 of #12,000,000',
                color: AppColors.prefixTextColor,
                fontSize: 16.0,
                height: 20.0,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircularProgressIndicator(
                value: 0.6,
                color: valueColor,
                backgroundColor: AppColors.grey,
              ),
              Gap(28.0.h),
              CircularProgressIndicator(
                value: 0.6,
                color: valueColor,
                backgroundColor: AppColors.grey,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SummaryIconButton extends StatelessWidget {
  const SummaryIconButton({Key? key, this.onpressed, required this.icon})
      : super(key: key);
  final Function()? onpressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        icon,
        color: AppColors.primary,
      ),
    );
  }
}

class SummaryButton extends StatelessWidget {
  const SummaryButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.label = 'Payments',
  }) : super(key: key);
  final Function()? onPressed;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondary,
              elevation: 0,
              fixedSize: Size(107.w, 44.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0.r),
                ),
              ),
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
            ),
          ),
          Center(
            child: AppTextBody(
              textBody: label,
              color: AppColors.grey3,
              height: 18.0,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}
