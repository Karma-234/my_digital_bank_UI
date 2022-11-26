import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/exports.dart';

class TransferSuccesfulView extends StatelessWidget {
  const TransferSuccesfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showBkIcon: false,
      showImg: false,
      showPrevScaffold: true,
      colAlign: CrossAxisAlignment.start,
      btns: [
        AppButton(
          text: 'Back to Hompage',
          onPressed: () {
            Get.to(() => const AccountSummaryView());
          },
        )
      ],
      children: const [
        SucessWidget(),
      ],
    );
  }
}

class SucessWidget extends StatelessWidget {
  const SucessWidget({
    Key? key,
    this.color = AppColors.fadeColor,
    this.icon = Icons.check,
  }) : super(key: key);
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151.0.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(style: BorderStyle.solid, color: AppColors.fadeColor),
      ),
      child: Icon(
        icon,
        color: color,
        size: 75,
      ),
    );
  }
}
