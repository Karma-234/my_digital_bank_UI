import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view4.dart';
import 'package:kml_digital_bank/features/savings_target/widgets/target_header.dart';

import '../../../core/exports.dart';
import '../widgets/savings_interval_card.dart';

class SavingsTarget3 extends StatelessWidget {
  SavingsTarget3({super.key});
  final ctrl = Get.put(SavingsTargetController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Savings Targets',
      preContainer: [],
      inContainer: [
        Center(
          child: TargetHeader(ctrl: ctrl),
        ),
        Gap(34.83.h),
        const AppTextBody(
          textBody: 'Savings Interval',
          color: AppColors.black,
        ),
        const AppTextBody(
          textBody:
              'We have done some background calculations for your savings, see \nestimations below.',
          color: AppColors.black,
          fontSize: 12.0,
          height: 16.0,
        ),
        Gap(17.0.h),
        SavingsInterval(ctrl: ctrl),
        AppButton(
          text: 'Continue',
          btncolor: AppColors.secondary,
          txtcolor: AppColors.primary,
          onPressed: () {
            Get.to(() => SavingsTarget4());
          },
        ),
        Gap(34.0.h),
      ],
    );
  }
}
