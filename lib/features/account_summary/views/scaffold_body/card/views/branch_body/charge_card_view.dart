import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';

import 'wigets/card_charge_options.dart';

class ChargeCardView extends StatelessWidget {
  const ChargeCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Charge Card',
      preContainer: [],
      inContainer: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppTextBody(
              textBody: 'Charge card',
              color: AppColors.grey2,
            ),
            IconButton(
              color: AppColors.grey2,
              highlightColor: AppColors.grey2,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trashCan,
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
        const Divider(),
        const SearchOptionField(
          label: 'Instruction',
          hint: 'Recharge my phone',
          labelColor: AppColors.secondary,
          fullwidth: true,
        ),
        Gap(23.0.h),
        const AppTextBody(
          textBody: 'Interval',
          color: AppColors.secondary,
        ),
        const ChargeCardOption1(),
        Gap(23.0.h),
        const AppTextBody(
          textBody: 'Amount',
          color: AppColors.secondary,
        ),
        const ChargeCardOption2(),
        Gap(23.0.h),
        const SearchOptionField(
          label: 'Custom amount',
          hint: '2000',
          labelColor: AppColors.secondary,
          fullwidth: true,
        ),
        Gap(53.0.h),
        AppButton(
          txtcolor: AppColors.primary,
          btncolor: AppColors.secondary,
          onPressed: () {
            Get.to(() => const AccountSummaryView());
          },
          text: 'Save',
        )
      ],
    );
  }
}
