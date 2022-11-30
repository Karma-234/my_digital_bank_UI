import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/exports.dart';
import '../../link_bank/widgets/bank_grid_view.dart';
import '../controller/payment_controller.dart';

class NetworkOptions extends StatelessWidget {
  const NetworkOptions(
      {Key? key,
      required this.ctrl,
      this.title = '',
      required this.builder,
      this.itemCount})
      : super(key: key);

  final PaymenController ctrl;
  final String title;

  final Widget Function(BuildContext, int) builder;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(41.0.h),
          const CommonBackIcon(
            iconColor: AppColors.grey2,
          ),
          Gap(23.0.h),
          AppTextBody(
            textBody: title,
            color: AppColors.black,
          ),
          Gap(23.0.h),
          Expanded(
            child: GridView.builder(
              itemCount: itemCount,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300.0,
                mainAxisSpacing: 20.0.h,
                crossAxisSpacing: 20.0.w,
              ),
              itemBuilder: builder,
            ),
          )
        ],
      ),
    );
  }
}
