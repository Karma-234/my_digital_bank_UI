import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view1.dart';
import 'package:kml_digital_bank/features/savings_target/views/savings_target_view2.dart';

import '../../../../../../core/exports.dart';

class ExploreSavings extends StatelessWidget {
  const ExploreSavings({
    Key? key,
    required this.ctrl,
    required this.pageChanged,
  }) : super(key: key);

  final CarouselController? ctrl;
  final dynamic Function(int, CarouselPageChangedReason)? pageChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.0.h,
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.barChartColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(34.0.h),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    ctrl!.previousPage();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black,
                    size: 17.0,
                  ),
                ),
                Expanded(
                  child: CarouselSlider.builder(
                    carouselController: ctrl,
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppTextHeader(
                            header: 'Get paid acheive to your goals',
                            height: 20.0,
                            fontSize: 18.0,
                          ),
                          Gap(5.0.h),
                          const AppTextBody(
                            height: 15.0,
                            fontSize: 10.0,
                            textBody:
                                'Start a new savings towards one of goals \nnow and get up to 14.5% of your \ntargeted saving from us. ',
                          )
                        ],
                      );
                    },
                    options: CarouselOptions(
                        viewportFraction: 1.0, onPageChanged: pageChanged),
                  ),
                ),
                Gap(1.0.h),
                InkWell(
                  onTap: () {
                    ctrl!.nextPage();
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.black,
                    size: 17.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Gap(80.0.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => SavingsTarget1());
                      },
                      child: const Icon(
                        Icons.add,
                        color: AppColors.secondary,
                      ),
                    ),
                    const AppTextBody(
                      textBody: 'Start now',
                      fontSize: 10.0,
                      height: 12.0,
                    ),
                  ],
                ),
                Gap(20.0.w),
                Image.asset(
                  'finances'.png,
                  width: 185.0.w,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
