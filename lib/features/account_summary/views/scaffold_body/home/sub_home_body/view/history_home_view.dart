import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_opening/views/account_opening_view1.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/view/home_history_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/view/transaction_statement_search_view.dart.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';

import '../widgets/saving_target_card.dart';

class HomeView2 extends StatelessWidget {
  const HomeView2({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      preContainer: [
        const Center(
          child: AppTextBody(
            textBody: 'Account Summary',
            fontSize: 24.0,
            color: AppColors.primary,
            alignment: TextAlign.center,
          ),
        ),
        Gap(51.0.h),
        SummaryIconButton(
          icon: Icons.picture_as_pdf_outlined,
          onpressed: () {
            Get.to(() => StatementSearchView());
          },
        ),
        SummaryIconButton(
          icon: Icons.add,
          onpressed: () {
            Get.to(() => AccountOpeningView1());
          },
        ),
        SummaryIconButton(
          icon: Icons.card_membership_outlined,
          onpressed: () {},
        ),
        Gap(8.21.h),
      ],
      inContainer: [
        HeaderWidget(
          children: [
            SummaryButton(
              onPressed: () {},
              icon: Icons.compare_arrows_outlined,
              label: 'Transfer',
            ),
            Gap(7.0.w),
            SummaryButton(
              onPressed: () {},
              icon: FontAwesomeIcons.wallet,
            ),
            Gap(7.0.w),
            SummaryButton(
              onPressed: () {},
              icon: Icons.window_outlined,
              label: 'More',
            ),
          ],
        ),
        Gap(15.0.h),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SavingsTargetCard(
                  color: AppColors.blue,
                  title: 'New House',
                  valueColor: AppColors.blue,
                ),
                SavingsTargetCard(
                  color: AppColors.green2,
                  title: 'Travel',
                  valueColor: AppColors.green2,
                ),
                SavingsTargetCard(
                  color: Colors.red,
                  title: 'Mortgage',
                  valueColor: Colors.red,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
