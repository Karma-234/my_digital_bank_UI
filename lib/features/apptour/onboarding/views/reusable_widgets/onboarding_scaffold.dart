import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/reusable_widgets/skip_button.dart';

class OnboardingSkeleton extends StatelessWidget {
  const OnboardingSkeleton(
      {Key? key,
      required this.bodyTxt,
      required this.headerTxt,
      this.backgroundImage,
      this.alignBgImg = Alignment.topLeft,
      this.alignForeImg = Alignment.topLeft,
      this.foreImg,
      this.btmImg,
      this.button,
      required this.dotPosition,
      this.onTap})
      : super(key: key);
  final String headerTxt;
  final String bodyTxt;
  final String? backgroundImage;
  final AlignmentGeometry alignBgImg;
  final String? foreImg;
  final AlignmentGeometry alignForeImg;
  final String? btmImg;
  final Widget? button;
  final double dotPosition;
  final Function(double)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(48.0.h),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                backgroundImage!.png,
                height: 64.96.h,
                width: 320.0.w,
                alignment: alignBgImg,
              ),
              Positioned(
                top: 89.0.h,
                child: Image.asset(
                  foreImg!.png,
                  height: 228.0.h,
                  width: 375.0.w,
                  alignment: alignForeImg,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 551.0.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(btmImg!.png), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(150.0.h),
              Image.asset(
                'logo'.png,
                height: 30.0.h,
                width: 148.0.w,
              ),
              Gap(100.0.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextHeader(
                      header: headerTxt,
                      color: AppColors.primary,
                    ),
                    Gap(14.0.h),
                    AppTextBody(
                      textBody: bodyTxt,
                      color: AppColors.primary.withOpacity(0.6),
                    ),
                    Gap(19.0.h),
                    Center(
                      child: DotsIndicator(
                        onTap: onTap,
                        dotsCount: 3,
                        position: dotPosition,
                        decorator: DotsDecorator(
                          color: AppColors.primary.withOpacity(0.2),
                          activeColor: AppColors.primary,
                          activeSize: Size(16.0.w, 5.0.h),
                          size: Size(8.0.w, 5.0.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.5.r)),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.5.r)),
                        ),
                      ),
                    ),
                    Gap(40.0.h),
                    button ?? const SkipButton(),
                    Gap(25.0.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
