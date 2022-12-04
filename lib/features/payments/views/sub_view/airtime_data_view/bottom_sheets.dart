import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/airtime_data_view/airtime_success_vieww.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/airtime_data_view/data_success_view.dart';

import '../../../../../core/exports.dart';
import '../../../../link_bank/widgets/bank_grid_view.dart';
import '../../../controller/payment_controller.dart';
import '../../../widgets/network_options.dart';
import '../../../widgets/paymentlist_builder.dart';

Future<dynamic> airtimeBottomSheet(
    BuildContext context, PaymenController controller) {
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0.r))),
    context: context,
    builder: (context) {
      return NetworkOptions(
        itemCount: controller.network.length,
        ctrl: controller,
        title: 'Select airtime network',
        builder: (p0, p1) {
          return LogoDispaly(
            onPressed: () {
              airtimeNetworkChoice(
                context,
                controller,
                p1,
              );
            },
            asset: controller.network[p1],
          );
        },
      );
    },
  );
}

Future<dynamic> airtimeNetworkChoice(
    BuildContext context, PaymenController controller, int index) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0.r))),
    context: context,
    builder: (context) {
      return NetworkChoice(
        img: '${controller.network[index]}',
        choicename: '${controller.networkName[index]} airtime',
        submittext: 'Buy airtime',
        submit: () {
          Get.to(() => AirtimeSuccessView());
        },
      );
    },
  );
}

class NetworkChoice extends StatelessWidget {
  const NetworkChoice(
      {Key? key,
      this.img = '',
      this.choicename = '',
      this.submit,
      this.submittext = '',
      this.widget,
      this.gap = 17.0,
      this.rowgap = 41.0})
      : super(key: key);
  final String img;
  final String choicename;
  final dynamic Function()? submit;
  final String submittext;
  final Widget? widget;
  final double gap;
  final double rowgap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(41.0.h),
          Row(
            children: [
              const CommonBackIcon(
                iconColor: AppColors.grey2,
              ),
              Gap(rowgap.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    img.png,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                  ),
                  Gap(13.0.h),
                  AppTextBody(
                    textBody: choicename,
                    alignment: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Gap(17.0.h),
          Builder(
            builder: (context) =>
                widget ??
                const Center(
                  child: AppTextHeader(
                    header: '08033017283',
                    color: AppColors.black,
                    fontSize: 32.0,
                    height: 40.0,
                  ),
                ),
          ),
          Gap(17.0.h),
          const SearchOptionField(
            label: 'Amount',
            hint: 'E.g 1000',
            fullwidth: true,
          ),
          Gap(gap.h),
          AppButton(
            btncolor: AppColors.secondary,
            txtcolor: AppColors.primary,
            text: submittext,
            onPressed: submit,
          )
        ],
      ),
    );
  }
}

Future<dynamic> dataBottomSheet(
  BuildContext context,
  PaymenController controller,
) {
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0.r))),
    context: context,
    builder: (context) {
      return NetworkOptions(
        ctrl: controller,
        title: 'Select data netwok',
        builder: (p0, p1) {
          return LogoDispaly(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.0.r))),
                context: context,
                builder: (context) {
                  return NetworkChoice(
                    img: '${controller.network[p1]}',
                    submit: () {
                      Get.to(() => DataSuccessView());
                    },
                    submittext: 'Pay',
                    choicename: '${controller.networkName[p1]} data bundle',
                    widget: const SearchOptionField(
                      hint: 'E.g 09016253738',
                      label: 'Phone number',
                      fullwidth: true,
                    ),
                  );
                },
              );
            },
            asset: controller.network[p1],
          );
        },
      );
    },
  );
}
