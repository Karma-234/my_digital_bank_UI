import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/views/branch_body/bank_card_view.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

class CardFreezeDoneView extends StatelessWidget {
  const CardFreezeDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Add new card',
          onPressed: () {
            Get.to(() => AddBankCardView());
          },
        ),
        Gap(23.0.h),
        AppButton(
          text: 'HomePage',
          onPressed: () {
            Get.to(() => AccountSummaryView());
          },
        ),
      ],
      children: [
        const SucessWidget(),
        Gap(23.0.h),
        const AppTextBody(
          textBody: 'Card Frozen',
          color: AppColors.primary,
          alignment: TextAlign.center,
        ),
        Gap(23.0.h),
        const AppTextBody(
          textBody: 'Your card has been frozen successfully!',
          color: AppColors.primary,
          alignment: TextAlign.center,
        ),
        Gap(23.0.h),
      ],
    );
  }
}
