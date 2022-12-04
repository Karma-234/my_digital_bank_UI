import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/search_option_field.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_slider.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/widgets/account_carousel_slider.dart';
import 'package:kml_digital_bank/features/account_transfer/views/transfer_succesful_view.dart';
import 'package:kml_digital_bank/features/account_transfer/widgets/haeder_texts.dart';

import '../widgets/elevated_text_button.dart';

class OwnTransferView extends StatefulWidget {
  OwnTransferView({super.key});

  @override
  State<OwnTransferView> createState() => _OwnTransferViewState();
}

class _OwnTransferViewState extends State<OwnTransferView> {
  final CarouselController ctrl = CarouselController();

  bool beneficiary = false;

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      preContainer: const [PreConText(text: 'Own Account Transfer')],
      inContainer: [
        const TransferHeaderText(text: 'Select account to debit'),
        StatementSlider(
          controller: ctrl,
          backpress: () {
            ctrl.previousPage();
          },
          forwardpress: () {
            ctrl.nextPage();
          },
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SearchOptionField(
                  label: 'How much ?',
                  hint: '#20,000',
                  fullwidth: true,
                  labelColor: AppColors.secondary,
                ),
                Gap(10.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedTextButton(
                      text: 'Saved beneficiaries',
                      onPressed: () {
                        setState(() {
                          beneficiary = true;
                        });
                      },
                    ),
                    ElevatedTextButton(
                      text: 'New beneficiary',
                      onPressed: () {
                        setState(() {
                          beneficiary = false;
                        });
                      },
                    ),
                  ],
                ),
                Builder(
                  builder: (context) {
                    if (beneficiary == false) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Gap(10.0),
                          SearchOptionField(
                            label: 'Beneficiary bank',
                            hint: 'Choose',
                            fullwidth: true,
                            labelColor: AppColors.secondary,
                          ),
                          SearchOptionField(
                            label: 'Beneficiary account',
                            hint: '1002003456',
                            fullwidth: true,
                            labelColor: AppColors.secondary,
                          ),
                          SearchOptionField(
                            label: 'Beneficiary name',
                            hint: 'James Bright',
                            fullwidth: true,
                            labelColor: AppColors.secondary,
                          ),
                        ],
                      );
                    }
                    return Gap(20.0.h);
                  },
                ),
                const SearchOptionField(
                  label: 'Remarks{optional}',
                  hint: 'Remarks',
                  fullwidth: true,
                  labelColor: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
        AppButton(
          txtcolor: AppColors.primary,
          btncolor: AppColors.secondary,
          text: 'Complete Transfer',
          onPressed: () {
            Get.to(() => const TransferSuccesfulView());
          },
        ),
        Gap(20.0.h),
      ],
    );
  }
}
