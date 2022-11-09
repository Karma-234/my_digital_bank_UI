import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/exports.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.secondary,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'bg3'.png,
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(142.0.h),
            const AppTextHeader(
              header: 'Sign in',
              height: 40,
              color: AppColors.primary,
            ),
            Gap(22.0.h),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(31.5.h),
                      Expanded(
                        child: ListView(
                          children: [
                            const AppTextHeader(header: 'Your Email'),
                            Gap(30.7.h),
                            const NewPasswordFormField(
                                hintPass: 'E.g matthew@gmail.com'),
                            Gap(19.0.h),
                            const AppTextHeader(header: 'Password'),
                            Gap(30.71.h),
                            const NewPasswordFormField(
                                hintPass: 'Enter password'),
                            Gap(121.12.h),
                          ],
                        ),
                      ),
                      ResetPasswordButton(
                          text: 'Sign In',
                          buttonPressed: () {
                            Get.to(() => const AccountSummaryView());
                          }),
                      Gap(1.5.h),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const AppTextHeader(
                            header: 'Forgot Password ',
                          ),
                        ),
                      ),
                      Gap(21.5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AppTextBody(
                            textBody: 'A new User ?',
                            color: AppColors.prefixTextColor,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => const SignUpView());
                            },
                            child: const AppTextHeader(
                              header: 'Sign up',
                            ),
                          ),
                        ],
                      ),
                      Gap(17.1.h),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
