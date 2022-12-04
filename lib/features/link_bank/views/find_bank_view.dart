import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';

import '../controller/bank_list_controller.dart';
import '../widgets/bank_grid_view.dart';
import '../widgets/bank_list_view.dart';

class FindBankView extends StatelessWidget {
  FindBankView({super.key});
  final ctrl = Get.put(BankListController());
  var indexClicked = 0;

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Find your bank',
      preContainer: [
        const Center(
          child: AppTextBody(
            textBody: 'The bank you want to take money from.',
            color: AppColors.txt2,
          ),
        ),
        Gap(10.0.h),
      ],
      inContainer: [
        Gap(18.0.h),
        const SearchField(
          hint: 'Bank Name',
        ),
        Gap(23.0.h),
        Row(
          children: [
            const AppTextBody(textBody: 'Banks'),
            Gap(200.0.w),
            Obx(
              () => AppBarIconButton(
                icon: Icons.list,
                color: ctrl.view.value ? AppColors.secondary : AppColors.grey,
                onpressed: () {
                  ctrl.listView();
                },
              ),
            ),
            Obx(
              () => AppBarIconButton(
                icon: Icons.grid_view_outlined,
                color: ctrl.view.value ? AppColors.grey : AppColors.secondary,
                onpressed: () {
                  ctrl.gridView();
                },
              ),
            ),
          ],
        ),
        Gap(23.0.h),
        Expanded(
          child: Obx(() {
            if (ctrl.view.isTrue) {
              return BankListView(
                ctrl: ctrl,
              );
            }
            return BankGridView(
              ctrl: ctrl,
            );
          }),
        ),
        Gap(33.0.h),
      ],
    );
  }
}
