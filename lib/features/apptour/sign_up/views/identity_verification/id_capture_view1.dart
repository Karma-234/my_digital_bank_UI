import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/identity_verification/id_capture_view2.dart';
import '../../../../../controller/exports.dart';
import '../../../../../core/exports.dart';

class IdCaptureView1 extends StatelessWidget {
  IdCaptureView1({
    super.key,
  });

  final imgCtrl = Get.put(ProfileImageController());

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      showPrevScaffold: true,
      headerTxt: 'Preview',
      showImg: false,
      colAlign: CrossAxisAlignment.center,
      alignText: TextAlign.center,
      txtHeadcolor: AppColors.primary,
      btns: [
        AppButton(
          text: 'Proceed to ID card',
          onPressed: () => Get.to(() => IdCaptureView2()),
        ),
        SkipButton2(
          txtColor: AppColors.fadeColor,
          onTap: () => Get.to(() => IdCaptureView2()),
        ),
      ],
      children: [
        CircleAvatar(
          radius: 106.0.r,
          backgroundImage: (imgCtrl.selectedImage == null)
              ? Image.asset('avatar'.png).image
              : Image.file(
                  imgCtrl.selectedImage!,
                  fit: BoxFit.fill,
                ).image,
        ),
        Gap(35.0.h),
        SkipButton2(
          txtColor: AppColors.primary,
          txt: 'Take another',
          onTap: () {
            Get.back();
          },
        ),
        Gap(104.0.h),
        const AppTextBody(
          textBody:
              'Final task! Click the button below for ID card verification.',
          color: AppColors.fadeColor,
        )
      ],
    );
  }
}
