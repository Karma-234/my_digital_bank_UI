import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/onboarding/password_reset/views/otp_view.dart';

import '../app_colors/app_colors.dart';
import '../common_widgets/input_fields/info_input_field.dart';
import '../common_widgets/buttons/reset_password_button.dart';

class EmailVerificationForm extends StatelessWidget {
  const EmailVerificationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const InfoInputField(
            hintText: 'Enter email',
            counterText: 'Email address',
            prefixIcon: Icon(
              Icons.mail,
              color: AppColors.secondary,
            ),
          ),
          Gap(190.0.h),
          SizedBox(
            width: double.infinity,
            child: ResetPasswordButton(
              text: 'Email OTP code',
              buttonPressed: () {
                Get.to(() => const OtpResView());
              },
            ),
          ),
        ],
      ),
    );
  }
}
