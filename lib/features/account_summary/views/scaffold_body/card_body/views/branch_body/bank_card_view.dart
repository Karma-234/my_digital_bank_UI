import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/widgets/card_frame.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/search_option_field.dart';

import '../../../../../../../core/exports.dart';
import '../../widgets/bank_card.dart';

class AddBankCardView extends StatelessWidget {
  const AddBankCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.scaffoldColor2,
        leading: const CommonBackIcon(
          iconColor: AppColors.secondary,
        ),
      ),
      body: CardBodyFrame(
        precon: [
          const Center(
            child: BankCard(),
          ),
          Gap(15.h),
        ],
        inCon: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: SearchOptionField(
                  label: 'Card number',
                  hint: 'E.g 5345 5678 5678 5678',
                  labelColor: AppColors.secondary,
                  fullwidth: true,
                ),
              ),
              Gap(15.0.w),
              const SearchOptionField(
                label: 'Cvv',
                hint: '889',
                labelColor: AppColors.secondary,
                halfwidth: true,
              ),
            ],
          ),
          Gap(15.0.h),
          const SearchOptionField(
            label: 'Cardholder name',
            hint: 'Matthew Brown',
            labelColor: AppColors.secondary,
            fullwidth: true,
          ),
          Gap(15.0.h),
          const SearchOptionField(
            label: 'Expiry',
            hint: '20/20',
            labelColor: AppColors.secondary,
            halfwidth: true,
          ),
          Gap(85.0.h),
          AppButton(
            btncolor: AppColors.secondary,
            txtcolor: AppColors.primary,
            text: 'Add',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
