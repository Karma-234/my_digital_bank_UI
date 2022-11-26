import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/link_bank/views/linking_bank_view.dart';

import '../../../core/exports.dart';
import '../controller/bank_list_controller.dart';
import '../views/find_bank_view.dart';

class BankListView extends StatelessWidget {
  BankListView({
    super.key,
    required this.ctrl,
  });
  final BankListController ctrl;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ctrl.logoList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(20.0.h),
          child: ElevatedButton(
            onPressed: () {
              ctrl.indexPicker(index);
              Get.to(() => LinkingBankView());
            },
            style: ElevatedButton.styleFrom(
              shadowColor: AppColors.secondary.withOpacity(0.2),
              backgroundColor: AppColors.primary,
              elevation: 10.0,
              fixedSize: Size(
                140.0.w,
                74.0.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0.sp),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: Image.asset(
                ctrl.logoList[index].png,
              ),
            ),
          ),
        );
      },
    );
  }
}
