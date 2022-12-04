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
import 'package:kml_digital_bank/features/account_transfer/widgets/haeder_texts.dart';
import 'package:kml_digital_bank/features/quick_loan/views/loan_request_view.dart';

import '../widgets/loan_application_terms.dart';

class LoanApplicationView extends StatelessWidget {
  const LoanApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      inConAlign: CrossAxisAlignment.start,
      preContainer: [
        Gap(60.0.h),
        const PreConText(
          text: 'Loan application',
        )
      ],
      inContainer: [
        const LoanApplicationTerms(
          term1: 'For perid of 6 months',
          term2: 'Total payable amount is ₦0.00',
          term3: 'Monthly payment is ₦0.00',
          term4: 'Payment starting from Jan, 01',
        ),
        AppButton(
          txtcolor: AppColors.primary,
          btncolor: AppColors.secondary,
          onPressed: () {
            Get.to(() => LoanRequestview());
          },
          text: 'Let\'s continue',
        )
      ],
    );
  }
}
