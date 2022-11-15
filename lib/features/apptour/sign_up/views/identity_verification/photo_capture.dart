import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/reusable_widgets/skip_button.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';

import '../../../../../controller/exports.dart';
import '../../../../../core/exports.dart';
import '../../../../exports.dart';

class PhotoCaptureView extends StatelessWidget {
  PhotoCaptureView({super.key});
  final captureCtrl = Get.put(ProfileImageController());
  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      headerTxt: 'Face Capturing',
      bodyTxt: 'Take a snapshot',
      showImg: false,
      colAlign: CrossAxisAlignment.center,
      alignText: TextAlign.center,
      btns: [
        AppButton(
          txtcolor: AppColors.primary,
          btncolor: AppColors.secondary,
          onPressed: () {
            captureCtrl
                .getImage(ImageSource.camera)
                .then((value) => Get.to(() => IdCaptureView1()));
          },
          text: 'Take Snapshot',
        ),
        SkipButton2(
          onTap: () {
            Get.to(() => const IdCaptureView2());
          },
        ),
      ],
      children: [
        Image.asset(
          'facecapture'.png,
          height: 374.0.h,
          width: 170.83.w,
        )
      ],
    );
  }
}
