import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/exports.dart';
import '../controller/bank_list_controller.dart';
import '../views/find_bank_view.dart';
import '../views/linking_bank_view.dart';

class BankGridView extends StatelessWidget {
  const BankGridView({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final BankListController ctrl;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 20.0.h,
          crossAxisSpacing: 20.0.w),
      itemCount: ctrl.logoList.length,
      itemBuilder: (context, index) {
        return LogoDispaly(
          onPressed: () {
            ctrl.indexPicker(index);
            Get.to(() => LinkingBankView());
          },
          asset: ctrl.logoList[index],
        );
      },
    );
  }
}

class LogoDispaly extends StatelessWidget {
  const LogoDispaly({
    Key? key,
    this.onPressed,
    this.asset = '',
  }) : super(key: key);

  final Function()? onPressed;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
          asset.png,
        ),
      ),
    );
  }
}
