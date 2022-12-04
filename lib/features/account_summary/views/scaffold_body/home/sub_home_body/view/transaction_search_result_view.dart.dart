import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/view/home_history_view.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/transaction_tiles.dart';

import '../../../../../../../core/exports.dart';

class TransactionSearchResultView extends StatelessWidget {
  const TransactionSearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      secondBorder: true,
      preContainer: const [
        Center(
          child: AppTextBody(
            textBody: 'Transaction statement',
            fontSize: 24.0,
            color: AppColors.primary,
            alignment: TextAlign.center,
          ),
        ),
      ],
      inContainer: [
        HeaderWidget(
          children: [
            const AppTextBody(
              textBody: 'Jan 25, 2022 to Jan 25, 2022',
              color: AppColors.black,
            ),
            Gap(100.0.w),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.download_done_rounded,
                  color: AppColors.secondary,
                ))
          ],
        ),
        const Divider(
          color: AppColors.grey,
          thickness: 0.4,
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: Transactions(),
          ),
        ),
      ],
    );
  }
}
