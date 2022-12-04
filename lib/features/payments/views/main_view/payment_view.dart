import 'package:flutter/cupertino.dart';
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
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card/widgets/card_activity_button.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';

import '../../widgets/paymentlist_builder.dart';

class PaymentView extends StatelessWidget {
  PaymentView({super.key});
  final ctrl = Get.put(PaymenController());
  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Payment',
      preContainer: const [
        Center(
          child: AppTextBody(
            textBody: 'The bank you want to take money from.',
            color: AppColors.txt2,
          ),
        )
      ],
      inContainer: [
        Gap(10.0.h),
        const SearchField(),
        Gap(30.0.h),
        PaymentlistBuilder(ctrl: ctrl),
      ],
    );
  }
}
