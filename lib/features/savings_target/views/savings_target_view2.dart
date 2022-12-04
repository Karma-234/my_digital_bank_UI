import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view3.dart';

import '../widgets/target_header.dart';

class SavingsTarget2 extends StatelessWidget {
  SavingsTarget2({super.key});
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
        Gap(66.0.h),
        SingleChildScrollView(
          child: Column(
            children: [
              const SearchOptionField(
                label: 'Give it a title',
                hint: 'E.g House rent',
                fullwidth: true,
              ),
              Gap(29.0.h),
              const SearchOptionField(
                label: 'What is your savings target?',
                hint: 'E.g 500,000',
                fullwidth: true,
              ),
              Gap(29.0.h),
              const SearchOptionField(
                label: 'How long do you want to save for?',
                hint: 'E.g 6 months',
                fullwidth: true,
              ),
              Gap(29.0.h),
              AppButton(
                text: 'Next',
                btncolor: AppColors.secondary,
                txtcolor: AppColors.primary,
                onPressed: () {
                  Get.to(() => SavingsTarget3());
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
