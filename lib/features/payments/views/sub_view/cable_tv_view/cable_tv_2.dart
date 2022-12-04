import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/airtime_data_view/bottom_sheets.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/cable_tv_view/cable_tv_success.dart';

class CableTv2 extends StatelessWidget {
  CableTv2({super.key});
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
          gap: 62.0,
          img: '${ctrl.cable[ctrl.indexpicked.value]}',
          choicename: '${ctrl.cableName[ctrl.indexpicked.value]} Subscription',
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(52.0.h),
              SearchOptionField(
                hint: 'E.g 22383992',
                label:
                    '${ctrl.cableName[ctrl.indexpicked.value]} smart card number',
                fullwidth: true,
              ),
              Gap(52.0.h),
            ],
          ),
          submittext: 'Pay',
          submit: () {
            Get.to(() => CableTvSuccessView());
          },
        ),
      ],
    );
  }
}
