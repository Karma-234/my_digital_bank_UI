import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/exports.dart';
import '../controller/savings_target_controller.dart';

class SavingsInterval extends StatelessWidget {
  const SavingsInterval({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final SavingsTargetController ctrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 2,
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 12.0.h,
          crossAxisSpacing: 12.0.w,
        ),
        children: [
          Obx(
            () => SavingsIntervalCard(
              selected: ctrl.daily.value,
              day: 'Daily',
              amount: '₦100,000',
              content: 'Estimation for daily saving for 6 months is',
              onTap: () => ctrl.setDaily(true),
            ),
          ),
          Obx(
            () => SavingsIntervalCard(
              selected: ctrl.weekly.value,
              day: 'Weekly',
              amount: '₦100,000',
              content: 'Estimation for weekly saving for 6 months is',
              color: AppColors.green2,
              onTap: () => ctrl.setWeekly(true),
            ),
          ),
          Obx(
            () => SavingsIntervalCard(
              selected: ctrl.monthly.value,
              day: 'Monthly',
              amount: '₦100,000',
              content: 'Estimation for monthly saving for 6 months is',
              color: AppColors.secondary,
              onTap: () => ctrl.setMonthly(true),
            ),
          ),
          Obx(
            () => SavingsIntervalCard(
              selected: ctrl.anytime.value,
              day: 'Anytime',
              content: 'Unconditional savings, you can save anytime you want.',
              color: AppColors.green4,
              onTap: () => ctrl.setAnytime(true),
            ),
          ),
        ],
      ),
    );
  }
}

class SavingsIntervalCard extends StatelessWidget {
  const SavingsIntervalCard({
    Key? key,
    this.color = AppColors.blue,
    this.amount = '',
    this.content = '',
    this.day = '',
    this.onTap,
    this.selected = false,
  }) : super(key: key);
  final Color color;
  final String day;
  final String content;
  final String amount;
  final Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.0.r),
        height: 109.0.h,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextBody(
                  textBody: day,
                  color: AppColors.black2,
                ),
                Icon(
                  Icons.check_circle_outline,
                  size: 13.0,
                  color: selected ? AppColors.secondary : Colors.transparent,
                )
              ],
            ),
            AppTextBody(
              textBody: content,
              color: AppColors.black2,
              fontSize: 12.0,
              height: 16.0,
            ),
            AppTextBody(
              textBody: amount,
              color: AppColors.black2,
              fontSize: 16.0,
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
