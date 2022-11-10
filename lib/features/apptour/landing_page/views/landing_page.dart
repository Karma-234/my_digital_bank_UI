import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/features/apptour/sign_in/views/sign_in_view.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class ExistingUserView extends StatelessWidget {
  ExistingUserView({super.key});
  final GlobalKey<ScaffoldState> btmsheet = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: btmsheet,
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.0.w,
            right: 40.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SafeArea(
                child: CommonBackIcon(
                  iconColor: AppColors.primary,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0).w,
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
                    Text(
                      signUpText,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        color: AppColors.primary,
                        fontSize: 14.0.sp,
                        height: 24.0.sp / 14.0.sp,
                      ),
                    ),
                    Gap(
                      372.0.h,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonButton(
                    text: 'I am a new user',
                    btncolor: AppColors.primary,
                    buttonPressed: () {
                      Get.to(() => SignUpView());
                    },
                  ),
                  Gap(
                    10.0.h,
                  ),
                  CommonButton(
                    text: 'Sign in',
                    btncolor: AppColors.buttonColor2,
                    buttonPressed: () {
                      Get.to(() => const SignInView());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
