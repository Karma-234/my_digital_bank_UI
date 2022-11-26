import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

class LoanRequestview extends StatelessWidget {
  const LoanRequestview({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Okay',
          onPressed: () {},
        )
      ],
      children: [
        const SucessWidget(),
        Gap(27.0.h),
        const AppTextBody(
          textBody:
              'Thank you for your loan request. \n ₦1,000,000.00 has been credited \nto your loan account.',
          color: AppColors.primary,
          alignment: TextAlign.center,
        )
      ],
    );
  }
}
