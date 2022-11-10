import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final controller = Get.put(UserInfoController());
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0.w),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Gap(19.25.h),
                    const CommonBackIcon(
                      iconColor: AppColors.secondary,
                    ),
                    Gap(11.25.h),
                    Image(
                      alignment: Alignment.topLeft,
                      image: AssetImage(
                        'cutbg'.png,
                      ),
                      height: 84.3.h,
                      width: 320.0.w,
                    ),
                    Gap(11.25.h),
                    const AppTextHeader(
                      header: 'Your Basic Info',
                      color: AppColors.secondary,
                    ),
                    const AppTextBody(
                      textBody: basicInfo,
                      color: AppColors.bvnColor,
                    ),
                    Gap(66.0.h),
                    InfoInputField(
                      controller: controller.nameController,
                      validator: (p0) =>
                          p0 == null ? 'Please enter your name' : null,
                      hintText: 'Matthew Brown',
                      counterText: 'Fullname',
                      prefixIcon: null,
                    ),
                    Gap(38.0.h),
                    InfoInputField(
                        controller: controller.emailController,
                        validator: (p0) => p0 == null
                            ? 'Please enter your email'
                            : !EmailValidator.validate(p0)
                                ? 'Enter a valid email'
                                : null,
                        hintText: 'E.g matthew@gmail.com',
                        counterText: 'Email',
                        prefixIcon: null),
                    Gap(36.12.h),
                    const PhoneNumberField(numberCounterText: 'PhoneNumber'),
                    Gap(50.0.h),
                  ],
                ),
              ),
              Center(
                child: ResetPasswordButton(
                  text: 'Sign Up',
                  buttonPressed: () {
                    if (formkey.currentState!.validate()) {
                      Get.to(() => FaceCapture());
                    } else
                      null;
                  },
                ),
              ),
              Gap(32.0.h),
            ],
          ),
        ),
      ),
    );
  }
}