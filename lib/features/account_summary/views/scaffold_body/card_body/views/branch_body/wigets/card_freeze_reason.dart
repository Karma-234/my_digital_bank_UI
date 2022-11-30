import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/views/branch_body/card_freeze_otp_view.dart';

import '../../../../../../../../core/exports.dart';

class CardFreezeReason extends StatelessWidget {
  const CardFreezeReason({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppButton(
          btncolor: AppColors.scaffoldColor2,
          txtcolor: AppColors.black,
          txtsize: 18.0,
          text: 'Suspected fraud',
          onPressed: () {
            Get.to(() => CardFreezeOTPView());
          },
        ),
        AppButton(
          btncolor: AppColors.scaffoldColor2,
          txtcolor: AppColors.black,
          txtsize: 18.0,
          text: 'Lost card',
          onPressed: () {
            Get.to(() => CardFreezeOTPView());
          },
        ),
        AppButton(
          btncolor: AppColors.scaffoldColor2,
          txtcolor: AppColors.black,
          txtsize: 18.0,
          text: 'Stolen card',
          onPressed: () {
            Get.to(() => CardFreezeOTPView());
          },
        ),
      ],
    );
  }
}
