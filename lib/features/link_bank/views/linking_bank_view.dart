import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_link_controller.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_list_controller.dart';
import 'package:kml_digital_bank/features/link_bank/views/bank_linked_view.dart';

import '../../../core/exports.dart';

class LinkingBankView extends StatelessWidget {
  LinkingBankView({super.key});
  final ctrl = Get.put(BankListController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
        showtitle: true,
        title: 'Find your bank',
        preContainer: [
          const Center(
            child: AppTextBody(
              textBody: 'Link your bank account',
              color: AppColors.txt2,
            ),
          ),
          Gap(10.0.h),
        ],
        inContainer: [
          Center(
            child: Image.asset(ctrl.logoList[ctrl.bankPicked.value].png),
          ),
          Gap(46.0.h),
          const SearchOptionField(
            label: 'Bank location',
            hint: 'E.g Lagos',
            fullwidth: true,
          ),
          Gap(17.0.h),
          const SearchOptionField(
            label: 'Account number',
            hint: 'E.g 1234567890',
            fullwidth: true,
          ),
          Gap(157.0.h),
          AppButton(
            text: 'Link',
            txtcolor: AppColors.primary,
            btncolor: AppColors.secondary,
            onPressed: () {
              Get.to(() => BankLinkedView());
            },
          ),
        ]);
  }
}
