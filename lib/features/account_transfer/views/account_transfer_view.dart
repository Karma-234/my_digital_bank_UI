import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_transfer/views/own_transfer_view.dart';

import '../widgets/haeder_texts.dart';
import '../widgets/transfer_options_card.dart';

class AccountTransferView extends StatelessWidget {
  const AccountTransferView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(preContainer: const [
      PreConText(text: 'Accounts Transfer'),
    ], inContainer: [
      const TransferHeaderText(text: 'Transfer options'),
      Gap(10.0.h),
      const Divider(
        color: AppColors.black,
        thickness: 0.4,
      ),
      TransferOptionsCard(
        imageString: 'trfimg1',
        color: AppColors.green3,
        title: 'Own Account Transfer',
        onTap: () {
          Get.to(() => OwnTransferView());
        },
      ),
      const TransferOptionsCard(
        imageString: 'trfimg2',
        color: AppColors.blue,
        title: 'Intra-Bank Transfer',
      ),
      const TransferOptionsCard(
        imageString: 'trfimg3',
        color: AppColors.secondary,
        title: 'Inter-Bank Transfer',
      ),
    ]);
  }
}
