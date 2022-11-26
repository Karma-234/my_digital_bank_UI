import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

import '../../../../core/exports.dart';

class EmailVerificationDoneView extends StatelessWidget {
  const EmailVerificationDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showPrevScaffold: true,
      showBkIcon: false,
      showImg: false,
      btns: [
        AppButton(
          text: 'Back to profile',
          onPressed: () {
            Get.off(() => const AccountSummaryView());
          },
        ),
      ],
      children: [
        SucessWidget(),
        Gap(20.0.h),
        AppTextBody(
          textBody: 'Validation Successful',
          height: 32.0.h,
          color: AppColors.primary,
          alignment: TextAlign.center,
        )
      ],
    );
  }
}
