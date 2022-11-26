import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/link_bank/views/find_bank_view.dart';

class AccountOpenedView extends StatelessWidget {
  const AccountOpenedView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          onPressed: () {
            Get.to(() => FindBankView());
          },
          text: 'Fund your current account',
        ),
        Gap(33.0.h),
        SkipButton2(
          txt: 'View Acccount',
          txtColor: AppColors.primary,
          onTap: () {},
        ),
        Gap(10.0.h),
      ],
      children: [
        const SucessWidget(),
        Gap(43.0.h),
        const AppTextHeader(
          textAlign: TextAlign.center,
          header: 'Great!',
          color: AppColors.primary,
        ),
        Gap(11.0.h),
        const AppTextHeader(
          textAlign: TextAlign.center,
          header:
              'You have successfully opened a current account with us. Thank you.',
          color: AppColors.primary,
        ),
      ],
    );
  }
}
