import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/airtime_data_view/bottom_sheets.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/cable_tv_view/cable_tv_success.dart';

import 'electricty_success_view.dart';

class ElectricityView2 extends StatelessWidget {
  ElectricityView2({super.key});
  final ctrl = Get.put(PaymenController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Payments',
      secondBorder: true,
      preContainer: [],
      inContainer: [
        NetworkChoice(
          rowgap: 0,
          gap: 62.0,
          img: '${ctrl.power[ctrl.indexpicked.value]}',
          choicename:
              '${ctrl.powerName[ctrl.indexpicked.value]} Electricity Distribution \nCompany',
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(22.0.h),
              SearchOptionField(
                hint: '57/unit',
                label: '${ctrl.powerName[ctrl.indexpicked.value]} bundle',
                fullwidth: true,
              ),
              Gap(22.0.h),
              SearchOptionField(
                hint: 'E.g 22383992',
                label:
                    '${ctrl.powerName[ctrl.indexpicked.value]} smart card number',
                fullwidth: true,
              ),
              Gap(20.0.h),
            ],
          ),
          submittext: 'Pay',
          submit: () {
            Get.to(() => ElectricitySuccessView());
          },
        ),
      ],
    );
  }
}
