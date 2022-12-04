import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/exports.dart';

class SavingsTargets extends StatelessWidget {
  const SavingsTargets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13.0,
            ).r,
            child: Container(
              padding: const EdgeInsets.all(10.0).r,
              margin: const EdgeInsets.only(bottom: 11.1).h,
              height: 98.99.h,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: index == 0
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(10.0.r),
                        bottomRight: Radius.circular(10.0.r),
                      )
                    : BorderRadius.circular(10.0.r),
              ),
              child: ListTile(
                leading: Image.asset(
                  'newhouse'.png,
                  height: 30.0.h,
                ),
                title: const AppTextBody(
                  textBody: 'New House',
                  color: AppColors.black,
                  fontSize: 10.0,
                  height: 16.0,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(12.0.h),
                    const AppTextBody(textBody: 'Amount saved'),
                    const AppTextBody(
                      textBody: '₦1,340,000 out of 2,500,000',
                      fontSize: 14.0,
                      height: 18.0,
                    ),
                  ],
                ),
                trailing: const CircularProgressIndicator(
                  color: AppColors.green2,
                  value: 0.82,
                  strokeWidth: 7.0,
                  backgroundColor: AppColors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
