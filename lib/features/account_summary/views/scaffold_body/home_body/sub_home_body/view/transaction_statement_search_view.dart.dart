import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/view/transaction_search_result_view.dart.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/statement_and_account_scaffold.dart';

import '../../../../../../../core/exports.dart';
import '../widgets/search_option_field.dart';
import '../widgets/statement_slider.dart';

class StatementSearchView extends StatelessWidget {
  StatementSearchView({super.key});
  final CarouselController ctrl = CarouselController();
  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(preContainer: const [
      Center(
        child: AppTextBody(
          textBody: 'Transaction statement',
          fontSize: 24.0,
          color: AppColors.primary,
          alignment: TextAlign.center,
        ),
      ),
    ], inContainer: [
      const AppTextBody(
        textBody: 'Select an account',
        color: AppColors.black,
      ),
      StatementSlider(
        controller: ctrl,
        backpress: () {
          ctrl.previousPage();
        },
        forwardpress: () {
          ctrl.nextPage();
        },
      ),
      const SearchOptionField(
        label: 'Search by amount',
        hint: '#500',
      ),
      Gap(23.0.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SearchOptionField(
            label: 'From',
            hint: 'Jan 25, 2022',
          ),
          SearchOptionField(
            label: 'To',
            hint: 'Jul 25, 2022',
          ),
        ],
      ),
      Gap(186.h),
      AppButton(
        text: 'Get Statement',
        txtcolor: AppColors.primary,
        btncolor: AppColors.secondary,
        onPressed: () {
          Get.to(() => const TransactionSearchResultView());
        },
      )
    ]);
  }
}
