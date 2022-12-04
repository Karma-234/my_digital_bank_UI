import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view5.dart';

import '../widgets/account_debit_choice.dart';

class SavingsTarget4 extends StatelessWidget {
  SavingsTarget4({super.key});
  final ctrl = Get.put(SavingsTargetController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Savings Targets',
      secondBorder: true,
      preContainer: [],
      inContainer: [
        Gap(31.0.h),
        const AppTextBody(
          textBody: 'Select account to be debited',
        ),
        Gap(14.0.h),
        AccountChoiceList(ctrl: ctrl),
        Gap(37.0.h),
        const Divider(),
        Gap(34.0.h),
        Obx(
          () => AutoDebit(
            txt: 'Automatically',
            txt2: 'Debit your account automatically at set intervals',
            onTap: () => ctrl.setAuto(true),
            selected: ctrl.auto.value,
          ),
        ),
        Obx(
          () => AutoDebit(
            txt: 'Manual',
            txt2: 'I will manually save to account.',
            onTap: () => ctrl.setmanual(true),
            selected: ctrl.manual.value,
          ),
        ),
        Gap(25.0.h),
        AppButton(
          btncolor: AppColors.secondary,
          txtcolor: AppColors.primary,
          text: 'Start Saving',
          onPressed: () {
            Get.to(() => SavingsTarget5());
          },
        ),
        Gap(34.0.h),
      ],
    );
  }
}

class AutoDebit extends StatelessWidget {
  const AutoDebit({
    Key? key,
    this.txt = '',
    this.txt2 = '',
    this.onTap,
    this.selected = false,
  }) : super(key: key);
  final String txt;
  final String txt2;
  final bool selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: AppTextBody(textBody: '$txt debit '),
      subtitle: AppTextBody(
        textBody: txt2,
        fontSize: 12.0,
        height: 16.0,
        color: AppColors.black,
      ),
      trailing: selected
          ? const Icon(
              Icons.check_circle_outline,
              color: AppColors.secondary,
              size: 16.0,
            )
          : const Icon(
              Icons.circle_outlined,
              color: AppColors.prefixTextColor,
              size: 16.0,
            ),
    );
  }
}
