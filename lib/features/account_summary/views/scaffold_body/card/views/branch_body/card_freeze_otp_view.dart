import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card/views/branch_body/card_freeze_done_view.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

import '../../../../../../../controller/mobx_controllers/timer_controller.dart';
import '../../../../../../../controller/user_info-controller.dart';
import '../../../../../../../core/exports.dart';

class CardFreezeOTPView extends StatelessWidget {
  CardFreezeOTPView({super.key});
  final ctrl = Get.put(UserInfoController());

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      headerTxt: 'OTP Code',
      bodyTxt:
          'You\'re almost done! Key in the 6 digit code we just sent to ${ctrl.phonetxt}.',
      showImg: false,
      children: [
        OTPinInput(
          onComp: (p0) {
            Get.to(() => CardFreezeDoneView());
          },
        ),
        Gap(11.0.h),
        AppTimer(
          duration: const Duration(minutes: 2),
          resend: () async {},
        )
      ],
    );
  }
}
