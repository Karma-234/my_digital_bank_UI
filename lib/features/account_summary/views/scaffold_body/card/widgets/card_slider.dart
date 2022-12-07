import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/exports.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    Key? key,
    required this.accName,
    this.onPageChanged,
  }) : super(key: key);

  final String accName;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Container(
          padding: EdgeInsets.all(14.0.r),
          margin: EdgeInsets.all(5.0.r),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'bg3'.png,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20.0.r),
            gradient: LinearGradient(
              colors: [
                index == 0
                    ? Color(0xFF075D73)
                    : index == 1
                        ? Color(0xFF0088D5)
                        : Color(0xFFC6CE69),
                index == 0
                    ? Color(0xFF0A3945)
                    : index == 1
                        ? Color(0xFFD14ED3)
                        : Color(0xFF636B06),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppTextBody(
                    textBody: 'Current balance',
                    fontSize: 14.0,
                    height: 18.0,
                    color: AppColors.primary,
                  ),
                  const AppTextBody(
                    textBody: '₦12,937',
                    color: AppColors.primary,
                  ),
                  Gap(10.0.h),
                  AppTextBody(
                    textBody: accName,
                    color: AppColors.grey,
                  ),
                  const AppTextBody(
                    textBody: '5345 5678 5678 5678',
                    color: AppColors.grey,
                    height: 18.0,
                    fontSize: 14.0,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: AppColors.primary,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Exp. date\n',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 10.0.sp,
                        height: 10.0.sp / 16.0.sp,
                      ),
                      children: [
                        TextSpan(
                          text: '\n2020',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 14.0.sp,
                            height: 14.0.sp / 18.0.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'mastercard'.png,
                    height: 19.36.h,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        onPageChanged: onPageChanged,
        height: 174.0.h,
        enlargeCenterPage: true,
        viewportFraction: 0.73,
      ),
    );
  }
}
