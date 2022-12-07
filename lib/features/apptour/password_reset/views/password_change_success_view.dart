import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

import '../../../../core/exports.dart';

class PasswordSuccessView extends StatelessWidget {
  const PasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Proceed',
          onPressed: () {
            Get.to(() => const AccountSummaryView());
          },
        )
      ],
      children: [
        const SucessWidget(),
        Gap(23.0.h),
        const AppTextHeader(
          header: 'Password changed!',
          fontSize: 18.0,
          color: AppColors.primary,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
