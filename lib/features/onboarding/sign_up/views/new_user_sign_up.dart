import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0.w),
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
                  const InfoInputField(
                      hintText: 'Matthew Brown',
                      counterText: 'Fullname',
                      prefixIcon: null),
                  Gap(38.0.h),
                  const InfoInputField(
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
                  Get.to(() => const EmailVerificationView());
                },
              ),
            ),
            Gap(32.0.h),
          ],
        ),
      ),
    );
  }
}
