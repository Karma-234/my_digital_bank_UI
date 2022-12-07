import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/exports.dart';

import '../../../../core/exports.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showImg: false,
      showBkIcon: true,
      headerTxt: 'New Password',
      btns: [
        AppButton(
          btncolor: AppColors.secondary,
          txtcolor: AppColors.primary,
          text: 'Recover password',
          onPressed: () {
            Get.to(() => PasswordSuccessView());
          },
        )
      ],
      children: [
        const InfoInputField(
          hintText: 'Enter Password',
          counterText: 'New password',
        ),
        Gap(23.0.h),
        const InfoInputField(
          hintText: 'Enter Password',
          counterText: 'Confirm password',
        ),
      ],
    );
  }
}
