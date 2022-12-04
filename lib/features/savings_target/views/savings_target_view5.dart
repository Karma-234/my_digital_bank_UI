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
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';

class SavingsTarget5 extends StatelessWidget {
  SavingsTarget5({super.key});
  final ctrl = Get.put(SavingsTargetController());

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showImg: false,
      showBkIcon: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Done',
          onPressed: () {
            Get.to(() => AccountSummaryView());
          },
        )
      ],
      children: [
        const SucessWidget(),
        Gap(35.0.h),
        const AppTextBody(
          textBody: 'Congratulations!',
          color: AppColors.primary,
          alignment: TextAlign.center,
        ),
        Gap(18.0.h),
        const AppTextBody(
          textBody: 'You have successfully started your New House saving goal.',
          color: AppColors.primary,
          alignment: TextAlign.center,
        ),
        Gap(69.0.h),
        const AppTextBody(
          textBody: 'Send reminder at intervals',
          color: AppColors.buttonColor2,
          alignment: TextAlign.center,
        ),
        Gap(11.0.h),
        Obx(
          () => Switch(
            value: ctrl.reminder.value,
            onChanged: (value) => ctrl.reminder.value = value,
            activeTrackColor: AppColors.buttonColor2,
            activeColor: AppColors.secondary,
            inactiveTrackColor: AppColors.grey2,
          ),
        )
      ],
    );
  }
}
