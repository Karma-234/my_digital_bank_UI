import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_opening/views/account_opening_view1.dart';
import 'package:kml_digital_bank/features/account_transfer/views/account_transfer_view.dart';

import '../../../../../core/exports.dart';
import '../home/sub_home_body/view/home_history_view.dart';

class AccountCarouselSlider extends StatelessWidget {
  const AccountCarouselSlider({
    Key? key,
    this.pageChanged,
  }) : super(key: key);
  final dynamic Function(int, CarouselPageChangedReason)? pageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          if (index == 2) {
            return MaterialButton(
              onPressed: () => Get.to(() => AccountOpeningView1()),
              child: Container(
                margin: EdgeInsets.only(right: 20.w),
                padding: EdgeInsets.all(12.0.r),
                height: 99.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(13.0.r),
                    ),
                    border: Border.all(
                        color: AppColors.black.withOpacity(0.2),
                        style: BorderStyle.solid),
                    color: Colors.transparent),
                child: const Center(
                  child: Icon(Icons.add_circle_outlined),
                ),
              ),
            );
          }
          return MaterialButton(
            onPressed: () {
              Get.to(() => const HomeHistoryView());
            },
            child: Container(
              margin: EdgeInsets.only(right: 20.w),
              padding: EdgeInsets.all(12.0.r),
              height: 99.0.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13.0.r),
                  ),
                  color: AppColors.primary),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AppTextBody(
                        textBody: 'SAVINGS ACCOUNT',
                        height: 12.0,
                        fontSize: 12.0,
                        color: AppColors.prefixTextColor,
                      ),
                      AppTextBody(
                        textBody: '00034805403',
                        fontSize: 14.0,
                        height: 18.0,
                        color: AppColors.black,
                      ),
                      AppTextHeader(
                        header: '#5,200,200',
                        fontSize: 20.0,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: AppColors.grey2,
                          size: 10.0.h,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.grey2,
                          size: 18.0.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
            viewportFraction: 0.9,
            onPageChanged: pageChanged,
            enableInfiniteScroll: false,
            height: 99.0.h,
            autoPlay: true,
            autoPlayCurve: Curves.elasticInOut,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enlargeCenterPage: true),
      ),
    );
  }
}
