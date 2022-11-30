import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_transfer/widgets/haeder_texts.dart';
import 'package:kml_digital_bank/features/link_bank/controller/bank_list_controller.dart';
import 'package:kml_digital_bank/features/link_bank/views/find_bank_view.dart';

import '../../../core/exports.dart';
import '../widgets/account_type_list.dart';

class AccountOpeningView1 extends StatelessWidget {
  AccountOpeningView1({super.key});
  final ctrl = Get.put(BankListController());

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      showtitle: true,
      title: 'Open an Account',
      secondBorder: true,
      preContainer: const [],
      inContainer: [
        const AppTextBody(
          textBody: 'Select the account type you like',
          color: AppColors.grey3,
        ),
        AccountTypeList(ctrl: ctrl),
        Gap(20.0.h),
        const Divider(
          thickness: 0.5,
          color: Colors.black,
        ),
        Gap(20.0.h),
        const AppTextBody(
          textBody: 'Select the account type you like',
          color: AppColors.grey2,
        ),
        Gap(20.0.h),
        OptionsTile2(
          onTap: () {
            Get.to(() => FindBankView());
          },
        ),
        Gap(60.0.h),
      ],
    );
  }
}

class OptionsTile2 extends StatelessWidget {
  const OptionsTile2(
      {Key? key,
      this.onTap,
      this.trlIcon = Icons.arrow_forward_ios,
      this.leading,
      this.subtitle,
      this.title,
      this.IconColor})
      : super(key: key);
  final Function()? onTap;
  final IconData trlIcon;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0.sp),
        ),
        color: AppColors.scaffoldColor2,
      ),
      margin: EdgeInsets.only(top: 15.0.h),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: title ??
            const AppTextBody(
              textBody: 'Link your Bank Account',
              color: AppColors.black,
              fontSize: 14.0,
              height: 18.0,
            ),
        subtitle: subtitle ??
            const AppTextBody(
              textBody: 'Link any of your bank accounts eg GTB...',
              color: AppColors.grey2,
              fontSize: 12.0,
              height: 16.0,
            ),
        trailing: Icon(
          trlIcon,
          color: IconColor ?? AppColors.grey,
          size: 12,
        ),
      ),
    );
  }
}
