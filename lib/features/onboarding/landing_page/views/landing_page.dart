import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class ExistingUser extends StatelessWidget {
  ExistingUser({super.key});
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: CommonBackIcon(
                iconColor: AppColors.primary,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(right: 36.0, left: 36.0, bottom: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome to ',
                    style: GoogleFonts.inter(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
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
                        wordSpacing: 3.0.sp,
                        fontSize: 14.0.sp),
                  ),
                  Gap(
                    372.0.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      text: 'I am a new user',
                      color: AppColors.primary,
                      buttonPressed: () {
                        Get.to(() => const SignUpDetails());
                      },
                    ),
                  ),
                  Gap(
                    10.0.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      text: 'Sign in',
                      color: AppColors.buttonColor2,
                      buttonPressed: () {
                        btmsheet.currentState!.showBottomSheet(
                          (context) {
                            return Container(
                              height: 300.0,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
