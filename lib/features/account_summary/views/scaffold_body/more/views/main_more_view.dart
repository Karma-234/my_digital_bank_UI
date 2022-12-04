import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/more/controller/more_controller.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/widgets/account_carousel_slider.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/widgets/indicator.dart';

import '../widgets/explore_savings.dart';
import '../widgets/new_savings_target.dart';
import '../widgets/savings_target.dart';

class MoreBody extends StatelessWidget {
  MoreBody({super.key});
  final CarouselController? ctrl = CarouselController();
  final ctrl2 = Get.put(MoreController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0).w,
          child: const AppTextBody(
            textBody: 'Explore - Savings faetures',
            height: 20.0,
            fontSize: 11.0,
          ),
        ),
        Gap(3.0.h),
        ExploreSavings(
          ctrl: ctrl,
          pageChanged: (p0, p1) {
            ctrl2.setIndex(p0);
          },
        ),
        Gap(9.0.h),
        Obx(
          () => Indicator(
            dotIndex: ctrl2.realindex.value.toDouble(),
            dotCount: 3,
            activeColor: AppColors.secondary,
          ),
        ),
        Gap(21.0.h),
        const NewSavingsTarget(),
        const SavingsTargets()
      ],
    );
  }
}
