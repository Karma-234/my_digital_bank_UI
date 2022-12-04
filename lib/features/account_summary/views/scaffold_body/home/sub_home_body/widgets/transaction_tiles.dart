import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/exports.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
        TransactionsTile(),
      ],
    );
  }
}

class TransactionsTile extends StatelessWidget {
  const TransactionsTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        FontAwesomeIcons.twitter,
        color: Colors.blue,
        size: 29.0,
      ),
      title: const AppTextHeader(
        header: 'Twitter',
        color: AppColors.black,
        fontSize: 18.0,
        height: 16.0,
      ),
      subtitle: const AppTextHeader(
        header: 'Subscription',
        color: AppColors.grey2,
        fontSize: 14.0,
        height: 12.0,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppTextHeader(
            header: '-#12,957',
            color: AppColors.black,
            fontSize: 18.0,
            height: 16.0,
          ),
          Gap(10.0.h),
          const AppTextHeader(
            header: 'Subscription',
            color: AppColors.grey2,
            fontSize: 14.0,
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
