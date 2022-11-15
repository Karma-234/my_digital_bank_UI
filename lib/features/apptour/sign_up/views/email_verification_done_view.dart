import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/features/account_summary/views/account_summary_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

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
            Get.offAll(() => const AccountSummaryView());
          },
        )
      ],
    );
  }
}
