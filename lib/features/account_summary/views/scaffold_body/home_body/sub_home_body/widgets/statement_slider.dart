import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/exports.dart';

class StatementSlider extends StatelessWidget {
  const StatementSlider({
    Key? key,
    required this.controller,
    this.forwardpress,
    this.backpress,
  }) : super(key: key);

  final CarouselController controller;
  final Function()? forwardpress;
  final Function()? backpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0).r,
      margin: EdgeInsets.symmetric(vertical: 10.0.h),
      height: 107.h,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: AppColors.scaffoldColor2),
          BoxShadow(color: AppColors.scaffoldColor2),
          BoxShadow(color: AppColors.scaffoldColor2, blurRadius: 4.0),
          BoxShadow(
              color: AppColors.scaffoldColor2,
              blurRadius: 15.0,
              spreadRadius: 0.25),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0.r),
        ),
        image: DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        color: AppColors.scaffoldColor2,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: backpress,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 18,
            ),
          ),
          Expanded(
            child: CarouselSlider.builder(
              carouselController: controller,
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    AppTextBody(
                      textBody: 'Savings account',
                      color: AppColors.black,
                      fontSize: 14.0,
                    ),
                    AppTextBody(
                      textBody: 'Current Balance',
                      color: AppColors.black,
                      fontSize: 10.0,
                      height: 16.0,
                    ),
                    AppTextBody(
                      textBody: '#12,957',
                      color: AppColors.black,
                      fontSize: 18.0,
                    )
                  ],
                );
              },
              options: CarouselOptions(
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {},
                enableInfiniteScroll: false,
                height: 76.81.h,
                autoPlayCurve: Curves.elasticInOut,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enlargeCenterPage: true,
              ),
            ),
          ),
          IconButton(
            onPressed: forwardpress,
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.black,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
