import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/apptour/sign_in/views/sign_in_view.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class ExistingUserView extends StatelessWidget {
  const ExistingUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: const CommonBackIcon(
            iconColor: AppColors.primary,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent.withOpacity(0),
      ),
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 33.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextBody(
                textBody: 'Welcome to',
                color: AppColors.primary,
              ),
              Gap(
                20.0.h,
              ),
              Image.asset(
                'logo'.png,
                width: 148.w,
                fit: BoxFit.fill,
              ),
              Gap(46.86.h),
              const AppTextBody(
                textBody: signUpText,
                color: AppColors.primary,
                fontSize: 14.0,
              ),
              Gap(
                372.0.h,
              ),
              AppButton(
                onPressed: () {
                  Get.to(() => SignUpView());
                },
                btncolor: AppColors.primary,
                text: 'I am a new user',
                btnwidth: 287.0,
              ),
              Gap(
                5.0.h,
              ),
              AppButton(
                onPressed: () {
                  Get.to(() => const SignInView());
                },
                text: 'Sign In',
                btnwidth: 287.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
