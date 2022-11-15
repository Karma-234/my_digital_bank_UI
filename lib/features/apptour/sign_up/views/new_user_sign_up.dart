import 'package:country_pickers/country_pickers.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/bvn_validation_view.dart';
import '../../../../core/exports.dart';

import '../reusable_widgets/userinfo_scaffold.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final controller = Get.put(UserInfoController());

  final GlobalKey<FormState> signUpkey = GlobalKey();

  final inputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
        color: AppColors.secondary, style: BorderStyle.solid, width: 2.0.sp),
  );

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      formkey: signUpkey,
      headerTxt: 'Your Basic Info',
      bodyTxt: basicInfo,
      bgImg: 'cutbg',
      btns: [
        AppButton(
          btncolor: AppColors.secondary,
          text: 'Sign up',
          txtcolor: AppColors.primary,
          onPressed: () => signUpkey.currentState!.validate()
              ? Get.to(() => BvnValidationView())
              : null,
        ),
      ],
      children: [
        InfoInputField(
          controller: controller.nameController,
          validator: (p0) => p0!.isEmpty ? 'Please enter your name' : null,
          hintText: 'Matthew Brown',
          counterText: 'Full name',
        ),
        Gap(38.0.h),
        InfoInputField(
          controller: controller.emailController,
          validator: (p0) => p0!.isEmpty
              ? 'Please enter your email'
              : !EmailValidator.validate(p0)
                  ? 'Enter a valid email'
                  : null,
          hintText: 'E.g matthew@gmail.com',
          counterText: 'Email',
        ),
        Gap(36.12.h),
        PhoneNumberField(
          fieldctrl: controller.phoneNumberController,
          phnTxt: controller.phnCode.value,
          validator: (p0) => p0!.isEmpty
              ? 'Enter your phone number'
              : p0.length < 10
                  ? 'Enter complete phone number'
                  : null,
        ),
        Gap(50.0.h),
      ],
    );
  }
}
