import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_opening/views/account_opened_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';

class AccountOpeningView2 extends StatelessWidget {
  const AccountOpeningView2({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      title: 'Open an Account',
      showtitle: true,
      secondBorder: true,
      preContainer: [],
      inContainer: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'bank'.svg,
                alignment: Alignment.center,
              ),
              Gap(20.0.h),
              const AppTextBody(
                  textBody:
                      'Get familiar with current \naccount opening details.'),
            ],
          ),
        ),
        Gap(28.0.h),
        const AppTextBody(
          textBody: 'Current account opening policy',
          color: AppColors.black,
          height: 27.0,
        ),
        Gap(11.0.h),
        const AppTextBody(
          textBody: '''
1. First account opening policy and instructions.
2. Second  account opening policy and instructions.
2. Third  account opening policy and instructions.
''',
          height: 27.0,
        ),
        Gap(23.0.h),
        const AppTextBody(
          textBody: 'Current account features',
          color: AppColors.black,
          height: 27.0,
        ),
        Gap(11.0.h),
        const AppTextBody(
          textBody: '''
1. First Feature.
2. Second  Feature.
2. Third  Feature.
''',
          height: 27.0,
        ),
        Gap(88.0.h),
        AppButton(
          text: 'Open Current Account',
          txtcolor: AppColors.primary,
          btncolor: AppColors.secondary,
          onPressed: () {
            Get.to(() => const AccountOpenedView());
          },
        ),
      ],
    );
  }
}
