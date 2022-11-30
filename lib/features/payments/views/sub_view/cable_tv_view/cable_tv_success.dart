import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

class CableTvSuccessView extends StatelessWidget {
  const CableTvSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Continue to homepgae',
          onPressed: () {
            Get.to(() => AccountSummaryView());
          },
        )
      ],
      children: [
        const SucessWidget(),
        Gap(23.0.h),
        const AppTextHeader(
          header: 'Cable Subscription Successful',
          color: AppColors.primary,
          textAlign: TextAlign.center,
        ),
        Gap(23.0.h),
        const AppTextHeader(
          header:
              'Card number 08034333000 has been recharged  with Compact plus bundle.',
          color: AppColors.primary,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
