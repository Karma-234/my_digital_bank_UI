import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/otp_signup_view.dart';

import '../../../../controller/user_info-controller.dart';
import '../../../../core/exports.dart';
import '../reusable_widgets/drop_down_widget.dart';

class BvnValidationView extends StatelessWidget {
  BvnValidationView({super.key});
  final GlobalKey<FormState> bvnkey = GlobalKey();
  final controller = Get.put(UserInfoController());
  final reasons = [
    'Your BVN is needed to keep your account safe\n and is a unique identifier for each customer'
  ];

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      formkey: bvnkey,
      headerTxt: 'BVN Validation',
      bodyTxt: bvnBody,
      bgImg: 'bgtrans',
      imgAlgn: Alignment.bottomCenter,
      btns: [
        AppButton(
          btncolor: AppColors.secondary,
          text: 'Validate',
          txtcolor: AppColors.primary,
          onPressed: () => bvnkey.currentState!.validate()
              ? Get.to(() => OtpSignUpView())
              : null,
        ),
      ],
      children: [
        InfoInputField(
          inputFormat: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          controller: controller.bvnController,
          validator: (p0) => p0!.isEmpty
              ? 'Enter your BVN'
              : p0.length < 10
                  ? 'Enter complete BVN'
                  : null,
          hintText: 'E.g 2348099783',
          counterText: 'BVN',
        ),
        Gap(56.12.h),
        DropDown(
          items: reasons,
          hint: 'Why we need your BVN',
          onChanged: (p0) {},
        ),
      ],
    );
  }
}
