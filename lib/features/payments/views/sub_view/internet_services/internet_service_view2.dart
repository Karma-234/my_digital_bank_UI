import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/airtime_data_view/bottom_sheets.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/internet_services/internet_service_view3.dart';

class InternetServiceView2 extends StatelessWidget {
  InternetServiceView2({super.key});
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
          img: '${ctrl.dataProvider[ctrl.indexpicked.value]}',
          choicename:
              '${(ctrl.dataProvider[ctrl.indexpicked.value]).toString().capitalizeFirst} Internet Services',
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(22.0.h),
              SearchOptionField(
                hint: 'Easy Jeje',
                label:
                    '${ctrl.dataProvider[ctrl.indexpicked.value].toString().capitalize} bundle',
                fullwidth: true,
              ),
              Gap(22.0.h),
              SearchOptionField(
                hint: 'E.g 09016225383',
                label:
                    '${ctrl.dataProvider[ctrl.indexpicked.value].toString().capitalizeFirst} Phone number',
                fullwidth: true,
              ),
              Gap(20.0.h),
            ],
          ),
          submittext: 'Pay',
          submit: () {
            Get.to(() => InternetServiceView3());
          },
        ),
      ],
    );
  }
}
