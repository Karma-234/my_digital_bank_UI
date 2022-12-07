import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/input_fields/info_input_field.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/strings/text_strings.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/drop_down_widget.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/reusable_widgets/userinfo_scaffold.dart';
import 'package:kml_digital_bank/features/exports.dart';

import '../../../../../controller/exports.dart';
import '../../../../../core/forms/id_verification_form.dart';

class IdCaptureView2 extends StatefulWidget {
  const IdCaptureView2({super.key});

  @override
  State<IdCaptureView2> createState() => _IdCaptureView2State();
}

class _IdCaptureView2State extends State<IdCaptureView2> {
  final items = ['Driver license', 'National Id', 'International Passport'];

  Object? value = 'National Id';
  final snapId = Get.put(IdentityController());

  @override
  Widget build(BuildContext context) {
    return UserInfoScaffold(
      headerTxt: 'Identity Verification',
      bodyTxt: 'Choose your type of identification and take a snapshot of it.',
      showImg: false,
      btns: [
        AppButton(
          text: 'Validate ID',
          onPressed: () {
            snapId
                .getIdImage(ImageSource.camera)
                .then((value) => Get.to(() => IdCaptureView3()));
          },
        ),
        SkipButton2(
          onTap: () {
            Get.to(AccountSummaryView());
          },
        ),
      ],
      children: [
        const AppTextBody(
          textBody: 'Type of Identity',
          alignment: TextAlign.end,
          color: AppColors.secondary,
        ),
        Gap(5.0.h),
        DropDown(
          itemPicked: value,
          elevation: 2.0,
          elevColor: AppColors.secondary,
          items: items,
          bgColor: AppColors.primary,
          hint: 'Choose',
          onChanged: (p0) {
            setState(() {
              value = p0;
            });
          },
        ),
        Gap(72.0.h),
        InfoInputField(
          hintText: 'Enter ID number',
          counterText: 'Identity number',
          inputFormat: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
        ),
      ],
    );
  }
}
