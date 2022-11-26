import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/email_verification.dart';

class DeviceTransferView1 extends StatelessWidget {
  DeviceTransferView1({super.key});
  final emailverif = Get.put(UserInfoController());
  final GlobalKey<FormState> verifKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      formkey: verifKey,
      showImg: false,
      showBkIcon: false,
      headerTxt: 'Email verification',
      bodyTxt:
          'Verify your email address. An OTP code will be sent to your email.',
      btns: [
        AppButton(
          onPressed: () {
            if (verifKey.currentState!.validate()) {
              Get.to(() => EmailOtpView());
            }
          },
          text: 'Email OTP code',
          btncolor: AppColors.secondary,
          txtcolor: AppColors.primary,
        ),
      ],
      children: [
        InfoInputField(
          controller: emailverif.emailVerifctrl,
          validator: (p0) {
            return (p0?.isEmpty ?? true)
                ? 'Enter email'
                : p0 == emailverif.emailtxt.value
                    ? null
                    : 'Emails do not match';
          },
          hintText: 'Enter email',
          counterText: 'Email address',
          prefixIcon: const Icon(
            Icons.mail_outline,
            color: AppColors.secondary,
          ),
        ),
      ],
    );
  }
}
