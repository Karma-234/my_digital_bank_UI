import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view2.dart';

class SavingsTarget1 extends StatelessWidget {
  SavingsTarget1({super.key});
  final ctrl = Get.put(SavingsTargetController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      preContainer: [Gap(50.0.h)],
      inContainer: [
        const AppTextBody(
          textBody: 'What are youu saving for?',
          color: AppColors.black,
        ),
        Gap(20.83.h),
        const SearchField(
          hint: 'Search goals',
        ),
        Gap(20.83.h),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 32.0,
            crossAxisSpacing: 0,
            crossAxisCount: 3,
          ),
          itemCount: ctrl.targets.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                ctrl.setTarget(index);
                Get.to(() => SavingsTarget2());
              },
              child: Column(
                children: [
                  Image.asset(
                    '${(ctrl.targets[index])}'.png,
                    height: 38.0.h,
                  ),
                  Gap(8.0.h),
                  AppTextBody(
                    textBody:
                        '${(ctrl.targets[index].toString().capitalizeFirst)}',
                    color: AppColors.black,
                    fontSize: 14.0,
                    height: 18.0,
                  )
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}
