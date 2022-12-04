import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card/widgets/card_frame.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_list_controller.dart';
import 'package:kml_digital_bank/features/quick_loan/widgets/loan_slider_widget.dart';

import '../../../../../../../controller/user_info-controller.dart';
import '../../../../../../../core/exports.dart';
import '../../../widgets/indicator.dart';
import '../../widgets/app_text_button.dart';
import '../../widgets/card_slider.dart';
import 'wigets/card_freeze_reason.dart';
import 'wigets/security_settings.dart';
import 'wigets/spending_limit.dart';

class CardSecurityView extends StatefulWidget {
  const CardSecurityView({super.key});

  @override
  State<CardSecurityView> createState() => _CardSecurityViewState();
}

class _CardSecurityViewState extends State<CardSecurityView> {
  int currentIndex = 0;
  final ctrl = Get.put(UserInfoController());
  final ctrl2 = Get.put(BankListController());
  double currentValue = 0;
  int duration = 0;
  bool web = true;
  bool atmPos = true;
  bool ngn = true;
  bool inter = true;
  List<String> header = ['Spending Limit', 'Reason', 'Card Control by Channel'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.scaffoldColor2,
        leading: const CommonBackIcon(
          iconColor: AppColors.secondary,
        ),
      ),
      body: CardBodyFrame(
        precon: [
          Padding(
            padding: const EdgeInsets.only(left: 44.0).w,
            child: const AppTextBody(textBody: 'Select card'),
          ),
          Gap(13.0.h),
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
        ],
        inCon: [
          AppTextBody(
            textBody: header[ctrl2.indexPicked.value],
            fontSize: 20.0,
          ),
          const Divider(),
          Gap(23.0.h),
          Builder(
            builder: (context) {
              if (ctrl2.indexPicked.value == 0) {
                return SpendingLimit(
                  currentValue: currentValue,
                  duration: duration,
                  onChanged: (p0) {
                    setState(() {
                      currentValue = p0;
                    });
                  },
                  onPressed1: () {},
                  onPressed2: () {},
                  onPressed3: () {},
                );
              } else if (ctrl2.indexPicked.value == 1) {
                return const CardFreezeReason();
              }
              return SecuritySettings(
                web: web,
                atmPos: atmPos,
                ngn: ngn,
                inter: inter,
                onchangedWeb: (p0) {
                  setState(() {
                    web = p0;
                  });
                },
                onchangedatmPos: (p0) {
                  setState(() {
                    atmPos = p0;
                  });
                },
                onchangedinter: (p0) {
                  setState(() {
                    inter = p0;
                  });
                },
                onchangedngn: (p0) {
                  setState(() {
                    ngn = p0;
                  });
                },
              );
            },
          )
        ],
      ),
    );
  }
}
