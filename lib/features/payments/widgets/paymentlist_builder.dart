import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/card/widgets/app_text_button.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/link_bank/widgets/bank_grid_view.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/cable_tv_view/cable_tv.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/electricity/electricity_view1.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/internet_services/internet_service_view1.dart';

import '../../account_summary/views/scaffold_body/card/widgets/card_activity_button.dart';
import '../controller/payment_controller.dart';
import '../views/sub_view/airtime_data_view/aitime_and_data_view.dart';
import '../views/sub_view/airtime_data_view/bottom_sheets.dart';

class PaymentlistBuilder extends StatelessWidget {
  const PaymentlistBuilder({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PaymenController ctrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 20.0.w,
            childAspectRatio: 2.0.h,
            crossAxisSpacing: 20.0.w),
        padding: EdgeInsets.zero,
        itemCount: ctrl.img.length,
        itemBuilder: (context, index) {
          return CardActivityButton(
            label: ctrl.label[index],
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.0.r))),
                context: context,
                builder: (context) => index == 0
                    ? AirtimeAndData(ctrl: ctrl)
                    : index == 1
                        ? CableTV()
                        : index == 5
                            ? InternetServiceView1()
                            : ElectricityView(),
              );
            },
            width: 140.0,
            labelColor: AppColors.black,
            shadowColor: AppColors.secondary.withOpacity(0.9),
            widget: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset('${(ctrl.img[index])}'.png),
            ),
          );
        },
      ),
    );
  }
}
