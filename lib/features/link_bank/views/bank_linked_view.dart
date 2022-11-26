import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_list_controller.dart';

class BankLinkedView extends StatelessWidget {
  BankLinkedView({super.key});
  final ctrl = Get.put(BankListController());

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          onPressed: () {},
          text: 'View linked account',
        ),
        Gap(23.0.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkipButton2(
              txt: 'Link another account',
              txtColor: AppColors.primary,
              onTap: () {},
            ),
            const Icon(
              Icons.add_circle_rounded,
              color: AppColors.primary,
              size: 12.0,
            ),
          ],
        )
      ],
      children: [
        const SucessWidget(),
        Gap(40.0.h),
        const AppTextHeader(
          header: 'Great!',
          color: AppColors.primary,
          textAlign: TextAlign.center,
        ),
        Gap(20.0.h),
        AppTextHeader(
          header:
              'You have successfully linked your ${(ctrl.bankList[ctrl.bankPicked.value])} account.',
          textAlign: TextAlign.center,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
