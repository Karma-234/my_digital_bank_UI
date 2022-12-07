import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view1.dart';

import '../../../../../../core/exports.dart';

class NewSavingsTarget extends StatelessWidget {
  const NewSavingsTarget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0).r,
      child: Container(
        padding: const EdgeInsets.all(8.0).r,
        height: 50.0.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0.r),
            topRight: Radius.circular(10.0.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppTextBody(
              textBody: 'Your target savings',
              fontSize: 11.0,
              height: 20.0,
            ),
            Row(
              children: [
                const AppTextHeader(
                  header: 'Add new target \nsavings',
                  fontSize: 10.0,
                  height: 12.0,
                  textAlign: TextAlign.end,
                ),
                Gap(5.0.w),
                InkWell(
                  onTap: () {
                    Get.to(() => SavingsTarget1());
                  },
                  child: Icon(
                    Icons.add,
                    size: 17.0.sp,
                    color: AppColors.secondary,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
