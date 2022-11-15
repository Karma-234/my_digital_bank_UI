import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/common_widgets/input_fields/otp_input_field.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/user_account_success_view.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showImg: false,
      headerTxt: 'Change PIN',
      bodyTxt: 'Key in your new PIN and tap on "Done” button',
      children: [
        OTPinInput(
          length: 4,
          onComp: (p0) {
            Get.to(() => const UserCreateSuccessView());
          },
        ),
      ],
    );
  }
}
