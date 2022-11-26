import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/controller/identity_capture_controller.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/identity_verification/idcapture_succcess_view.dart';

class IdCaptureView3 extends StatelessWidget {
  IdCaptureView3({super.key});
  final idCtrl = Get.put(IdentityController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      headerTxt: 'Identity Verification',
      bodyTxt: 'Front of identification card',
      txtHeadcolor: AppColors.primary,
      txtBodyColor: AppColors.primary,
      showImg: false,
      showPrevScaffold: true,
      btns: [
        AppButton(
          text: 'Done',
          onPressed: () => Get.off(
            () => const IdCaptureSuccessView(),
          ),
        ),
        const SkipButton2(
          txtColor: AppColors.primary,
        ),
      ],
      children: [
        Gap(15.0.h),
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0.r),
              ),
            ),
            height: 170.0.h,
            width: 293.0.w,
            child: Image.file(
              idCtrl.idImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Gap(162.95.h),
        const AppTextBody(
          textBody: 'You are done.',
          color: AppColors.txt2,
          alignment: TextAlign.center,
        ),
      ],
    );
  }
}
