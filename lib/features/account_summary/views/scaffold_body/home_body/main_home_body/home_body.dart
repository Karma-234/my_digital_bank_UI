import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/features/account_transfer/views/account_transfer_view.dart';
import 'package:kml_digital_bank/features/quick_loan/views/quick_loan_view.dart';
import '../../../../../../core/exports.dart';
import '../../../../../exports.dart';
import '../../../../widgets/colchart_widget.dart';
import '../../widgets/account_carousel_slider.dart';
import '../../widgets/indicator.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final userController = Get.put(UserInfoController());
  double dotIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 13.0).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.r,
                foregroundImage: Image.file(
                  userController.imgctrl.selectedImage,
                  fit: BoxFit.fill,
                ).image,
              ),
              Gap(9.0.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppTextBody(
                    textBody: 'Welcome',
                    color: AppColors.secondary,
                  ),
                  AppTextBody(
                    textBody: userController.nametxt.value,
                    color: AppColors.secondary,
                  )
                ],
              ),
            ],
          ),
          Gap(26.0.h),
          AccountCarouselSlider(
            pageChanged: (p0, p1) {
              setState(() {
                dotIndex = p0.toDouble();
              });
            },
          ),
          Gap(23.0.h),
          Indicator(dotIndex: dotIndex, dotCount: 3),
          Gap(13.0.h),
          Container(
            padding: const EdgeInsets.all(10.0).r,
            height: 223.0.h,
            width: 342.71.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
              color: AppColors.primary,
            ),
            child: ColChart(index: dotIndex),
          ),
          Gap(12.39.h),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListTileCard(
                  onPressed: () {
                    Get.to(() => QuickLoanView());
                  },
                  img: 'moneysac',
                  text: 'Need a quick loan ?  We\'ve got you.',
                ),
                Gap(13.0.w),
                ListTileCard(
                  onPressed: () {},
                  img: 'dollar',
                  text: 'Get control of your finance.',
                  bgColor: AppColors.tile2,
                ),
                Gap(13.0.w),
              ],
            ),
          ),
          Gap(12.39.h),
          Row(
            children: [
              ButtonCard(
                onPressed: () {
                  Get.to(() => const AccountTransferView());
                },
                icon: Icons.compare_arrows_outlined,
                label: 'Quick Transfer',
              ),
              Gap(9.0.w),
              ButtonCard(
                onPressed: () {},
                label: 'Payments',
                icon: Icons.wallet,
              ),
              Gap(9.0.w),
              ButtonCard(
                onPressed: () {},
                label: 'More',
                icon: Icons.window,
              ),
              Gap(13.0.w),
            ],
          ),
        ],
      ),
    );
  }
}
