import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';

import '../../../../core/exports.dart';
import '../../../exports.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final userController = Get.put(UserInfoController());

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
              )
            ],
          ),
          Gap(26.0.h),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 99.0.h,
                  width: 239.0.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.primary,
                  ),
                ),
                Gap(21.0.w),
                Container(
                  height: 99.0.h,
                  width: 239.0.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          Gap(43.0.h),
          Container(
            padding: const EdgeInsets.all(10.0).r,
            height: 223.0.h,
            width: 342.71.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
              color: AppColors.primary,
            ),
            child: SvgPicture.asset('chart'.svg),
          ),
          Gap(12.39.h),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListTileCard(
                  onPressed: () {},
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
                onPressed: () {},
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
              ButtonCard(onPressed: () {}, label: 'More', icon: Icons.window),
              Gap(13.0.w),
            ],
          ),
        ],
      ),
    );
  }
}
