import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_transfer/widgets/haeder_texts.dart';
import 'package:kml_digital_bank/features/quick_loan/views/loan_application_view.dart';

import '../widgets/drop_down_widget.dart';
import '../widgets/loan_slider_widget.dart';
import '../widgets/rate_card_widget.dart';

class QuickLoanView extends StatefulWidget {
  QuickLoanView({super.key});

  @override
  State<QuickLoanView> createState() => _QuickLoanViewState();
}

class _QuickLoanViewState extends State<QuickLoanView> {
  double currentValue = 0;
  List<String> duration = ['3 months', '6 months', '9 months', '1 year'];
  String defvalue = '3 months';

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(preContainer: [
      Gap(100.0.h),
      const PreConText(text: 'Quick Loan')
    ], inContainer: [
      Gap(15.0.h),
      AppLoanSlider(
        currentValue: currentValue,
        onChanged: (p0) {
          setState(() {
            currentValue = p0;
          });
        },
      ),
      Gap(13.0.h),
      LoanTermDropdown(
        defvalue: defvalue,
        duration: duration,
        onChanged: (p0) {
          defvalue = p0.toString();
        },
      ),
      Gap(9.0.h),
      Row(
        children: [const RateCard(), Gap(10.0.w), const RateCard()],
      ),
      Gap(31.0.h),
      AppButton(
        text: 'Apply now',
        txtcolor: AppColors.primary,
        btncolor: AppColors.secondary,
        onPressed: () {
          Get.to(() => LoanApplicationView());
        },
      )
    ]);
  }
}
