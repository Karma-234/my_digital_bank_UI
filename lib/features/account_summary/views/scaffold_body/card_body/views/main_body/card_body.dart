import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_opening/views/account_opening_view1.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/views/branch_body/bank_card_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/views/branch_body/card_security_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/widgets/indicator.dart';

import '../../../../../../link_bank/controller/bank_list_controller.dart';
import '../../widgets/card_activity_button.dart';
import '../../widgets/card_frame.dart';
import '../../widgets/card_slider.dart';
import '../../widgets/more_features.dart';
import '../../widgets/new_card_button.dart';
import '../../widgets/options_tile.dart';
import 'widget/topup_modal_sheet.dart';

class CardBody extends StatefulWidget {
  const CardBody({super.key});

  @override
  State<CardBody> createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  int currentIndex = 0;
  final ctrl = Get.put(UserInfoController());
  final ctrl2 = Get.put(BankListController());

  @override
  Widget build(BuildContext context) {
    return CardBodyFrame(
      precon: [
        AddNewCardButton(
          onPressed: () {
            Get.to(() => const AddBankCardView());
          },
        ),
        CardSlider(
          accName: ctrl.nametxt.value,
          onPageChanged: (p0, p1) {
            setState(() {
              currentIndex = p0;
            });
          },
        ),
        Indicator(
          dotIndex: currentIndex.toDouble(),
          dotCount: 3,
          activeColor: AppColors.secondary,
        ),
        Gap(13.0.h),
        Padding(
          padding: const EdgeInsets.only(left: 23.0).w,
          child: const AppTextBody(
            textBody: 'Activity',
            height: 19.0,
            fontSize: 16.0,
          ),
        ),
        Gap(13.0.h),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CardActivityButton(
            icon: Icons.add,
            label: 'Top up',
            onPressed: () {
              showModalBottomSheet(
                enableDrag: true,
                isDismissible: false,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0.r),
                  ),
                ),
                builder: (context) {
                  return TopUpModalSheet(
                    name: ctrl.nametxt.value,
                  );
                },
              );
            },
          ),
          CardActivityButton(
              icon: Icons.arrow_right_alt, label: 'Transfer', onPressed: () {}),
          CardActivityButton(
              icon: Icons.pie_chart_outline_sharp,
              label: 'Summary',
              onPressed: () {})
        ]),
        Gap(23.0.h),
      ],
      inCon: [
        const AppTextBody(
          textBody: 'More features',
          fontSize: 12.0,
          height: 15.0,
        ),
        MoreCardFeatures(
          onTap: () {
            ctrl2.indexPicker2(0);
            Get.to(() => const CardSecurityView());
          },
          onTap2: () {
            ctrl2.indexPicker2(1);
            Get.to(() => const CardSecurityView());
          },
          onTap3: () {
            ctrl2.indexPicker2(2);
            Get.to(() => const CardSecurityView());
          },
        )
      ],
    );
  }
}
