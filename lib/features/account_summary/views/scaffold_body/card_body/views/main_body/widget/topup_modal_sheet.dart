import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card_body/views/branch_body/charge_card_view.dart';

import '../../../../../../../../core/exports.dart';
import '../../../widgets/options_tile.dart';

class TopUpModalSheet extends StatelessWidget {
  const TopUpModalSheet({
    Key? key,
    this.name = '',
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0.r),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextBody(
            textBody: name,
            fontSize: 20.0,
          ),
          Gap(23.0.h),
          const Divider(),
          Gap(23.0.h),
          OptionsTile1(
            icon: Icons.recycling,
            ontap: () {
              Get.back();
            },
            title: 'Change account',
          ),
          Gap(23.0.h),
          OptionsTile1(
            icon: Icons.card_membership_sharp,
            ontap: () {
              Get.to(() => ChargeCardView());
            },
            title: 'Charge card',
          ),
        ],
      ),
    );
  }
}
