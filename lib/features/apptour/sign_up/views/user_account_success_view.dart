import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/device_transfer_view.dart';

import '../../../../core/exports.dart';
import '../reusable_widgets/userinfo_scaffold.dart';

class UserCreateSuccessView extends StatelessWidget {
  const UserCreateSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.off(() => DeviceTransferView1()),
    );
    return UserInfoScaffold(
      showPrevScaffold: true,
      showImg: false,
      showBkIcon: false,
      children: [
        Icon(
          FontAwesomeIcons.circleCheck,
          color: AppColors.txt2,
          size: 151.0.r,
        ),
        Gap(20.0.h),
        AppTextBody(
          textBody: 'Success!',
          height: 32.0.h,
          color: AppColors.primary,
          alignment: TextAlign.center,
        )
      ],
    );
  }
}
