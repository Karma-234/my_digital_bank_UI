import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_opening/views/account_opening_view2.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_list_controller.dart';

import '../../../core/exports.dart';

class AccountTypeList extends StatelessWidget {
  const AccountTypeList({
    Key? key,
    required this.ctrl,
  }) : super(key: key);
  final BankListController ctrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: ctrl.acctBody.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0.sp),
              ),
              color: AppColors.scaffoldColor2,
            ),
            margin: EdgeInsets.only(top: 15.0.h),
            child: ListTile(
              onTap: () {
                Get.to(() => const AccountOpeningView2());
              },
              title: AppTextBody(
                textBody: ctrl.acctType[index],
                color: AppColors.black,
                fontSize: 14.0,
                height: 18.0,
              ),
              subtitle: AppTextBody(
                textBody: ctrl.acctBody[index],
                color: AppColors.grey2,
                fontSize: 12.0,
                height: 16.0,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
                size: 12,
              ),
            ),
          );
        },
      ),
    );
  }
}
