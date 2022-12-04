import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/exports.dart';
import '../controller/savings_target_controller.dart';

class AccountChoiceList extends StatelessWidget {
  const AccountChoiceList({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final SavingsTargetController ctrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Obx(
            () => AccountChoice(
              onTap: () => ctrl.setsavings(true),
              selected: ctrl.savings.value,
              txt: 'Savings ',
            ),
          ),
          Obx(
            () => AccountChoice(
              onTap: () => ctrl.setCurrent(true),
              selected: ctrl.current.value,
              txt: 'Current ',
            ),
          ),
          Obx(
            () => AccountChoice(
              onTap: () => ctrl.setForeign(true),
              selected: ctrl.foreign.value,
              txt: 'Foreign ',
            ),
          ),
          Obx(
            () => AccountChoice(
              onTap: () => ctrl.setDeposit(true),
              selected: ctrl.deposit.value,
              txt: 'Deposit ',
            ),
          ),
        ],
      ),
    );
  }
}

class AccountChoice extends StatelessWidget {
  const AccountChoice({
    Key? key,
    this.txt = '',
    this.selected = false,
    this.onTap,
  }) : super(key: key);
  final String txt;
  final bool selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.0.h),
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        height: 57.0.h,
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor2,
          borderRadius: BorderRadius.circular(10.0.sp),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextBody(
              textBody: '$txt account',
              color: Colors.black,
            ),
            Icon(
              Icons.check_circle_outline,
              color: selected ? AppColors.secondary : Colors.transparent,
              size: 13.0,
            )
          ],
        ),
      ),
    );
  }
}
